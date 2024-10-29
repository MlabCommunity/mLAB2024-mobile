import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/common/widgets/errors/error_snackbar.dart';
import '../../../../core/common/widgets/loading_indicator.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../generated/l10n.dart';
import '../../application/quizz_take_controller.dart';
import '../../domain/user_answer_model.dart';
import '../widgets/finish_quizz_dialog.dart';
import '../widgets/quizz_progress_indicator.dart';
import '../widgets/quizz_step_content.dart';

@RoutePage()
class TakeQuizzWraperPage extends ConsumerStatefulWidget {
  const TakeQuizzWraperPage({super.key});

  @override
  ConsumerState<TakeQuizzWraperPage> createState() =>
      _TakeQuizzWraperPageState();
}

class _TakeQuizzWraperPageState extends ConsumerState<TakeQuizzWraperPage> {
  final stepController = PageController();

  @override
  Widget build(BuildContext context) {
    final quizzState = ref.watch(quizzTakeControllerProvider);
    final quizzController = ref.read(quizzTakeControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: quizzState.maybeWhen(
          loaded: (quiz, userAnswers, currentStep) => QuizzProgressIndicator(
            currentStep: currentStep,
            numberOfSteps: quiz.quizResponse.questions.length,
          ),
          orElse: () => const SizedBox.shrink(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
          child: Column(
            children: [
              Expanded(
                child: quizzState.maybeWhen(
                  loaded: (quiz, userAnswers, currentStep) => PageView.builder(
                    controller: stepController,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: quiz.quizResponse.questions.length,
                    itemBuilder: (context, index) {
                      return QuizzStepContent(
                        question: quiz.quizResponse.questions[index],
                      );
                    },
                  ),
                  orElse: () => const LoadingIndicator(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  quizzState.maybeWhen(
                    loaded: (quiz, answers, currentStep) => currentStep > 1
                        ? BasicButton(
                            onPressed: () {
                              if (currentStep > 0) {
                                stepController.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut);
                                quizzController.previousStep();
                              }
                            },
                            text: 'Previous')
                        : const Spacer(),
                    orElse: () => const Spacer(),
                  ),
                  quizzState.maybeWhen(
                    loaded: (quiz, answers, currentStep) => currentStep <
                            quiz.quizResponse.questions.length
                        ? BasicButton(
                            onPressed: () {
                              if (!validateAnswerForQuestion(
                                  answers, currentStep)) {
                                ErrorSnackbar.show(
                                  context,
                                  S.of(context).quizzTakeSelectAnswer,
                                  durationSeconds: 2,
                                );
                              } else if (currentStep <
                                  quiz.quizResponse.questions.length) {
                                stepController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut);
                                quizzController.nextStep();
                              }
                            },
                            text: 'Next',
                          )
                        : BasicButton(
                            onPressed: () {
                              if (!validateAnswerForQuestion(
                                  answers, currentStep)) {
                                ErrorSnackbar.show(context, 'Select an answer!',
                                    durationSeconds: 2);
                              } else {
                                FinishQuizzDialog.show(context);
                              }
                            },
                            text: S.of(context).quizzTakeFinishButton,
                          ),
                    orElse: () => const SizedBox.shrink(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  bool validateAnswerForQuestion(
      List<UserAnswerModel> answers, int currentStep) {
    return currentStep <= answers.length;
  }
}
