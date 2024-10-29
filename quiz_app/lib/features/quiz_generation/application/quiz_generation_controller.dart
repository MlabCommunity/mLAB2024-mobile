import 'package:file_picker/file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/models/question_model_interface.dart';
import '../../../generated/l10n.dart';
import '../data/repositories/quiz_generation_repository.dart';
import '../domain/create_quiz_model.dart';
import '../domain/generate_question_model.dart';
import '../domain/generate_quiz_model.dart';
import '../domain/quiz_request_model.dart';
import '../views/quizz_text_prompt_page.dart';
import 'quiz_generation_state.dart';

part 'quiz_generation_controller.g.dart';

@riverpod
class QuizGenerationController extends _$QuizGenerationController {
  final _quizGenerationRepository = quizGenerationRepositoryProvider;

  @override
  QuizGenerationState build() {
    const requestModel = QuizRequestModel(
      content: '',
      questionTypes: [],
      numberOfQuestions: 5,
      attachments: [],
      language: QuizLanguage.english,
    );
    return const QuizGenerationState.generating(requestModel);
  }

  Future<void> generate(QuizRequestModel requestModel) async {
    final result = await ref.read(_quizGenerationRepository).generateQuiz(quizRequestModel: requestModel);

    result.fold(
      (error) {
        state = QuizGenerationState.error(S.current.somethingWentWrong);
      },
      (quiz) {
        state = QuizGenerationState.generated(quiz);
      },
    );
  }

  Future<void> createQuiz(CreateQuizModel quiz) async {
    final result = await ref.read(_quizGenerationRepository).createQuiz(quizModel: quiz);

    result.fold(
      (error) {
        state = QuizGenerationState.error(S.current.somethingWentWrong);
      },
      (quizID) {
        state = QuizGenerationState.created(quizID);
      },
    );
  }

  void resetState() {
    state = const QuizGenerationState.generating(QuizRequestModel(
      content: '',
      questionTypes: [],
      numberOfQuestions: 5,
      attachments: [],
      language: QuizLanguage.english,
    ));
  }

  Future<void> deleteQuestion(GenerateQuizModel quiz, int index) async {
    final questionListCopy = List<GenerateQuestionModel>.from(quiz.generateQuestions);
    questionListCopy.removeAt(index);
    quiz = quiz.copyWith(generateQuestions: questionListCopy);
    state = QuizGenerationState.generated(quiz);
  }

  void modifyRequest(QuizRequestModel requestModel) {
    state = QuizGenerationState.generating(requestModel);
  }

  void modifyGeneratedQuiz(GenerateQuizModel quiz) {
    state = QuizGenerationState.generated(quiz);
  }

  void setLanguage(QuizLanguage language) {
    state.maybeWhen(
      generating: (request) {
        request = request.copyWith(language: language);
        modifyRequest(request);
      },
      orElse: () {},
    );
  }

  void updateQuestion(QuestionModelInterface question, int index) {
    state.maybeWhen(
      generated: (quiz) {
        final questionListCopy = List<QuestionModelInterface>.from(quiz.generateQuestions);
        questionListCopy[index] = question;
        quiz = quiz.copyWith(generateQuestions: questionListCopy);
        state = QuizGenerationState.generated(quiz);
      },
      orElse: () {},
    );
  }

  bool validateRequest(QuizRequestModel requestModel) {
    return (requestModel.content.isNotEmpty || requestModel.attachments.isNotEmpty) &&
        requestModel.questionTypes.isNotEmpty &&
        requestModel.numberOfQuestions > 0;
  }

  void setContent(String content) {
    state.maybeWhen(
      generating: (request) {
        request = request.copyWith(content: content);
        modifyRequest(request);
      },
      orElse: () {},
    );
  }

  void addAttachment(PlatformFile file) {
    state.maybeWhen(
      generating: (request) {
        request = request.copyWith(attachments: [...request.attachments, file]);
        modifyRequest(request);
      },
      orElse: () {},
    );
  }

  bool validateFileUpload() {
    return state.maybeWhen(generating: (request) {
      return request.attachments.length <= 3;
    }, orElse: () {
      return false;
    });
  }

  bool validateInput() {
    return state.maybeWhen(generating: (request) {
      return request.content.isNotEmpty || request.attachments.isNotEmpty;
    }, orElse: () {
      return false;
    });
  }
}
