import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/common/widgets/question_box.dart';
import '../../../../core/common/widgets/quizz_summary.dart';
import '../../../../core/common/widgets/secondary_button.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../generated/l10n.dart';
import '../../../core/common/widgets/dialogs/delete_dialog.dart';
import '../../../core/common/widgets/errors/basic_error_page.dart';
import '../../../core/common/widgets/loading_indicator.dart';
import '../../../core/common/widgets/new_question/add_new_question_dialog.dart';
import '../../../core/models/question_model_interface.dart';
import '../../../core/res/media_res.dart';
import '../../../core/services/app_router.dart';
import '../application/quiz_generation_controller.dart';
import '../application/quiz_generation_state.dart';
import '../domain/create_quiz_model.dart';
import '../domain/generate_question_model.dart';
import '../domain/generate_quiz_model.dart';

class QuizzPreviewPage extends ConsumerWidget {
  const QuizzPreviewPage({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizGenerationControllerProvider);
    final controller = ref.read(quizGenerationControllerProvider.notifier);
    return state.maybeWhen(
      orElse: () {
        return const LoadingIndicator();
      },
      generated: (quiz) {
        return SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).quizzCreationPreviewHeading,
                        style: context.textTheme.headlineLarge,
                      ),
                      const LargeVSpacer(),
                      QuizzSummary(
                        title: quiz.title,
                        description: quiz.description,
                      ),
                      const MediumVSpacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SecondaryButton(
                          onPressed: () {
                            AddNewQuestionDialog.show(
                              context,
                              onQuestionAdd: (question) {
                                addQuestion(controller, quiz, question);
                              },
                            );
                            // AddNewQuestionBottomSheet.show(
                            //   context,
                            //   onQuestionAdd: (question) {
                            //     addQuestion(controller, quiz, question);
                            //   },
                            // );
                          },
                          text: S.of(context).quizzCreationAddQuestionButton,
                        ),
                      ),
                      const LargeVSpacer(),
                      SingleChildScrollView(
                        child: ListView.builder(
                          itemCount: quiz.generateQuestions.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                QuestionBox(
                                  questionIndex: index,
                                  question: quiz.generateQuestions[index],
                                  onDelete: () async {
                                    await onDelete(context, index, state, controller);
                                  },
                                  correctAnswerVisible: true,
                                  onEdit: (question) {
                                    controller.updateQuestion(question, index);
                                  },
                                ),
                                const CustomVSpacer(32),
                              ],
                            );
                          },
                        ),
                      ),
                      const LargeVSpacer(),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 16,
                right: 16,
                child: Container(
                  color: AppColorScheme.surface,
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    children: [
                      BasicButton(
                        onPressed: () async {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                          final quizCreationModel = CreateQuizModel.fromGenerateQuizModel(model: quiz);
                          await controller.createQuiz(quizCreationModel);
                        },
                        text: S.of(context).saveQuizzButton,
                        width: double.infinity,
                      ),
                      const CustomVSpacer(16),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
      error: (error) {
        return BasicErrorPage(
          errorText: S.of(context).somethingWentWrong,
          onRefresh: () {
            ref.read(appRouterProvider).replaceAll([const DashboardRoute()]);
            controller.resetState();
          },
          refreshButtonText: S.of(context).goBackToDashboard,
          imageAsset: MediaRes.basicError,
        );
      },
    );
  }

  Future<void> onDelete(BuildContext context, int index, QuizGenerationState state, QuizGenerationController controller) async {
    showDialog(
      context: context,
      builder: (context) {
        return DeleteDialog(
          title: 'Are you sure?',
          content: const SizedBox(
            width: 0,
            height: 0,
          ),
          onConfirm: () async {
            state.maybeWhen(
              generated: (quiz) async {
                final questionListCopy = List<GenerateQuestionModel>.from(quiz.generateQuestions);
                questionListCopy.removeAt(index);
                quiz = quiz.copyWith(generateQuestions: questionListCopy);
                controller.modifyGeneratedQuiz(quiz);
              },
              orElse: () {},
            );
            Navigator.of(context).pop();
          },
        );
      },
    );
  }

  void addQuestion(QuizGenerationController controller, GenerateQuizModel quiz, QuestionModelInterface question) {
    final tempQuestions = List<QuestionModelInterface>.from(quiz.generateQuestions);
    tempQuestions.add(question);
    quiz = quiz.copyWith(
      generateQuestions: tempQuestions,
    );
    controller.modifyGeneratedQuiz(quiz);
  }
}
