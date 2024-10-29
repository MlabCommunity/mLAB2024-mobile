import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../generated/l10n.dart';
import '../data/repositories/quiz_details_repository.dart';
import '../domain/new_question_model.dart';
import '../domain/question_details_model.dart';
import '../domain/quiz_details_model.dart';
import 'quiz_details_state.dart';

part 'quiz_details_controller.g.dart';

@riverpod
class QuizDetailsController extends _$QuizDetailsController {
  final _quizDetailsRepository = quizDetailsRepositoryProvider;

  @override
  QuizDetailsState build() => const QuizDetailsState.loading();

  Future<void> getQuizDetails(String id) async {
    state = const QuizDetailsState.loading();

    try {
      final quizDetails = await ref.read(_quizDetailsRepository).getQuizDetails(id, 1);
      state = QuizDetailsState.loaded(quizDetails, false, 1);
    } catch (e) {
      state = QuizDetailsState.error(e.toString());
    }
  }

  void changeAnswerVisibility(bool isVisible) {
    state = state.maybeWhen(
        loaded: (quizDetails, _, pageNumber) => state = QuizDetailsState.loaded(quizDetails, isVisible, pageNumber), orElse: () => state);
  }

  void changeQuizStatus(QuizStatus status) {
    state = state.maybeWhen(
        loaded: (quizDetails, answersVisible, pageNumber) =>
            QuizDetailsState.loaded(quizDetails.copyWith(status: status), answersVisible, pageNumber),
        orElse: () => state);
  }

  void changeQuizAvailability(QuizAvailability availability) {
    state = state.maybeWhen(
        loaded: (quizDetails, answersVisible, pageNumber) =>
            QuizDetailsState.loaded(quizDetails.copyWith(availability: availability), answersVisible, pageNumber),
        orElse: () => state);
  }

  Future<bool> updateQuizProperties(
    String id,
    QuizStatus status,
    QuizAvailability availability,
  ) async {
    try {
      await ref.read(_quizDetailsRepository).updateQuizStatus(
            id,
            status,
          );
      await ref.read(_quizDetailsRepository).updateQuizAvailability(
            id,
            availability,
          );
      return true;
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      return false;
    }
  }

  Future<bool> updateQuizDetails(
    String id,
    String title,
    String description,
  ) async {
    try {
      await ref.read(_quizDetailsRepository).updateQuizDetails(id, title, description);
      state.maybeWhen(loaded: (quizDetails, answersVisible, pageNumber) {
        state = QuizDetailsState.loaded(quizDetails.copyWith(title: title, description: description), answersVisible, pageNumber);
      }, orElse: () {
        state = QuizDetailsState.error(S.current.somethingWentWrong);
      });
      return true;
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
    }
    return false;
  }

  Future<bool> deleteQuestion(String id) async {
    try {
      await ref.read(_quizDetailsRepository).deleteQuestion(id);
      state.maybeWhen(loaded: (quizDetails, answersVisible, pageNumber) {
        state = QuizDetailsState.loaded(
          quizDetails.copyWith(
            questions: quizDetails.questions.where((q) => q.id != id).toList(),
          ),
          answersVisible,
          pageNumber,
        );
      }, orElse: () {
        state = QuizDetailsState.error(S.current.somethingWentWrong);
      });
      return true;
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      return false;
    }
  }

  Future<bool> addNewQuestion(NewQuestionModel question) async {
    try {
      await ref.read(_quizDetailsRepository).addQuestion(question);
      _reloadQuestionsAfterAdding();
      return true;
    } catch (e) {
      state = QuizDetailsState.error(S.current.somethingWentWrong);
      return false;
    }
  }

  Future<bool> updateQuestion(
    NewQuestionModel question,
    String questionId,
  ) async {
    try {
      await ref.read(_quizDetailsRepository).deleteQuestion(questionId);
      await ref.read(_quizDetailsRepository).addQuestion(NewQuestionModel(
            title: question.title,
            createAnswers: question.answers,
            quizID: question.quizID,
          ));
      _reloadQuestionsAfterUpdating(questionId);
      return true;
    } catch (e) {
      state = QuizDetailsState.error(S.current.somethingWentWrong);
      return false;
    }
  }

  Future<void> _reloadQuestionsAfterUpdating(String oldQuestionId) async {
    try {
      state.maybeWhen(
        loaded: (quizDetails, answersVisible, pageNumber) async {
          final listWithoutOldQuestion = quizDetails.questions.where((q) => q.id != oldQuestionId).toList();
          final updatedQuizDetails = await ref.read(_quizDetailsRepository).getQuizDetails(quizDetails.id, pageNumber);
          final newQuestion = _findNewQuestion(
            listWithoutOldQuestion,
            updatedQuizDetails.questions,
          );

          final newQuestionList = quizDetails.questions.map((q) => q.id == oldQuestionId ? newQuestion : q).toList();

          state = QuizDetailsState.loaded(quizDetails.copyWith(questions: newQuestionList), answersVisible, pageNumber);
        },
        orElse: () => state,
      );
    } catch (e) {
      state = QuizDetailsState.error(S.current.somethingWentWrong);
    }
  }

  Future<void> _reloadQuestionsAfterAdding() async {
    try {
      state.maybeWhen(
        loaded: (quizDetails, answersVisible, pageNumber) async {
          final updatedQuizDetails = await ref.read(_quizDetailsRepository).getQuizDetails(quizDetails.id, pageNumber);
          final newQuestion = _findNewQuestion(quizDetails.questions, updatedQuizDetails.questions);
          final newQuestionList = quizDetails.questions + [newQuestion];
          state = QuizDetailsState.loaded(quizDetails.copyWith(questions: newQuestionList), answersVisible, pageNumber);
        },
        orElse: () => state,
      );
    } catch (e) {
      state = QuizDetailsState.error(S.current.somethingWentWrong);
    }
  }

  void loadParticipants() async {
    await state.maybeWhen(
      loaded: (quizDetails, answersVisible, pageNumber) async {
        final oldQuiz = quizDetails;
        final newQuiz = await ref.read(_quizDetailsRepository).getQuizDetails(
              oldQuiz.id,
              pageNumber + 1,
            );
        state = QuizDetailsState.loaded(
          oldQuiz.copyWith(
              participants: newQuiz.participants.copyWith(items: [...oldQuiz.participants.items, ...newQuiz.participants.items])),
          answersVisible,
          pageNumber + 1,
        );
      },
      orElse: () => null,
    );
  }
}

QuestionDetailsModel _findNewQuestion(List<QuestionDetailsModel> oldQuestions, List<QuestionDetailsModel> newQuestions) {
  return newQuestions.firstWhere(
    (element) => !oldQuestions.any((q) => q.id == element.id),
  );
}
