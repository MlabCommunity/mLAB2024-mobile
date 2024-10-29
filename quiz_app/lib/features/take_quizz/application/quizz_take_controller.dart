import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/services/app_router.dart';
import '../data/repositories/take_quiz_repository.dart';
import '../domain/submit_quiz_model.dart';
import '../domain/user_answer_model.dart';
import 'quizz_take_state.dart';

part 'quizz_take_controller.g.dart';

@riverpod
class QuizzTakeController extends _$QuizzTakeController {
  final takeQuizProvider = takeQuizRepositoryProvider;

  @override
  QuizzTakeState build() {
    return const QuizzTakeState.initial();
  }

  Future<void> startQuizz({required String id}) async {
    state = const QuizzTakeState.loading();
    final joinResult = await ref.read(takeQuizProvider).joinQuiz(joinCode: id);

    joinResult.fold(
      (error) {
        state = QuizzTakeState.error(error.message);
        return;
      },
      (participationId) async {
        state = const QuizzTakeState.loading();
        final id = jsonDecode(participationId)['id'] as String;
        final result = await ref.read(takeQuizProvider).getQuizParticipation(id: id);
        result.fold(
          (error) => state = QuizzTakeState.error(error.message),
          (participation) => state = QuizzTakeState.loaded(
            participationModel: participation,
            userAnswers: [],
            currentStep: 1,
          ),
        );
      },
    );
  }

  void nextStep() {
    state.maybeWhen(
      loaded: (participation, userAnswers, currentStep) => state = QuizzTakeState.loaded(
        participationModel: participation,
        userAnswers: userAnswers,
        currentStep: currentStep + 1,
      ),
      orElse: () {},
    );
  }

  void previousStep() {
    state.maybeWhen(
      loaded: (participation, userAnswers, currentStep) => state = QuizzTakeState.loaded(
        participationModel: participation,
        userAnswers: userAnswers,
        currentStep: currentStep - 1,
      ),
      orElse: () {},
    );
  }

  void answerQuestion({required String questionId, required String answerId}) {
    state.maybeWhen(
      loaded: (participation, userAnswers, currentStep) {
        final updatedAnswers = List<UserAnswerModel>.from(userAnswers);
        final existingAnswerIndex = updatedAnswers.indexWhere((element) => element.questionId == questionId);

        if (existingAnswerIndex != -1) {
          updatedAnswers[existingAnswerIndex] = updatedAnswers[existingAnswerIndex].copyWith(answerId: answerId);
        } else {
          updatedAnswers.add(UserAnswerModel(questionId: questionId, answerId: answerId));
        }

        state = QuizzTakeState.loaded(
          participationModel: participation,
          userAnswers: updatedAnswers,
          currentStep: currentStep,
        );
      },
      orElse: () {},
    );
  }

  Future<void> finishQuizz() async {
    state.maybeWhen(
      loaded: (participation, userAnswers, currentStep) async {
        final submitQuizModel = SubmitQuizModel(
          quizParticipationId: participation.id,
          questionsId: userAnswers.map((e) => e.questionId).toList(),
          answersId: userAnswers.map((e) => e.answerId).toList(),
        );
        final submitResult = await ref.read(takeQuizProvider).submitQuiz(submitQuizModel: submitQuizModel);
        submitResult.fold(
          (error) async {
            state = QuizzTakeState.error(error.message);
          },
          (_) async {
            final result = await ref.read(takeQuizProvider).getQuizResult(id: participation.id);
            result.fold(
              (error) async {
                state = QuizzTakeState.error(error.message);
              },
              (quizResult) async {
                state = QuizzTakeState.resultReceived(quizResult: quizResult);
                ref.read(appRouterProvider).replaceAll([TakeQuizzSummaryRoute(quizResult: quizResult)]);
              },
            );
          },
        );
      },
      orElse: () {},
    );
  }
}
