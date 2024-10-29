import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/basic_app_bar.dart';
import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/common/widgets/form_field.dart';
import '../../../../core/common/widgets/loading_indicator.dart';
import '../../../../core/common/widgets/secondary_button.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/services/app_router.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../generated/l10n.dart';
import '../../../profile/application/user_controller.dart';
import '../../application/quizz_take_controller.dart';
import '../../domain/quiz_response_model.dart';
import '../widgets/quit_quizz_taking_dialog.dart';

@RoutePage()
class TakeQuizzPage extends ConsumerStatefulWidget {
  const TakeQuizzPage({super.key, required this.joinCode});

  final String joinCode;

  @override
  ConsumerState<TakeQuizzPage> createState() => _TakeQuizzPageState();
}

class _TakeQuizzPageState extends ConsumerState<TakeQuizzPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => ref.read(quizzTakeControllerProvider.notifier).startQuizz(id: widget.joinCode),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => ref.read(userControllerProvider.notifier).getUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final quizState = ref.watch(quizzTakeControllerProvider);
    final userState = ref.watch(userControllerProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BasicAppBar(
        title: S.of(context).quizzTakeAppBarTitle,
        onBack: () {
          QuitQuizzTakingDialog.show(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).quizzTakeHeading,
              style: context.textTheme.headlineLarge,
            ),
            const SmallVSpacer(),
            Text(
              S.of(context).quizzTakeSubheading,
              style: context.textTheme.bodyMedium,
            ),
            const LargeVSpacer(),
            Form(
              key: formKey,
              child: IFormField(
                labelText: S.of(context).quizzTakeFormFieldLabel,
                hintText: userState.maybeWhen(
                  success: (user, _) => user.displayName,
                  guest: (user) => user.displayName,
                  orElse: () => S.of(context).unknownUsername,
                ),
                controller: usernameController,
                enabled: false,
                isRequired: false,
              ),
            ),
            const LargeVSpacer(),
            quizState.maybeWhen(
              loaded: (quiz, userNaswers, currentStep) => Column(
                children: [
                  TakeQuizzInfoBox(quizModel: quiz.quizResponse),
                  const LargeVSpacer(),
                  BasicButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.router.push(
                          const TakeQuizzWraperRoute(),
                        );
                      }
                    },
                    text: S.of(context).quizzTakeStartButton,
                    width: double.infinity,
                  ),
                ],
              ),
              error: (error) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ExtraLargeVSpacer(),
                  Text(
                    S.of(context).quizzTakeLoadingError,
                    style: context.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const LargeVSpacer(),
                  SecondaryButton(
                    onPressed: () => ref.read(appRouterProvider).replaceAll([const DashboardRoute()]),
                    text: S.of(context).goBackToDashboard,
                    width: double.infinity,
                  ),
                ],
              ),
              orElse: () => const LoadingIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}

class TakeQuizzInfoBox extends StatelessWidget {
  const TakeQuizzInfoBox({
    super.key,
    required this.quizModel,
  });

  final QuizResponseModel quizModel;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: AppColorScheme.border,
      strokeWidth: 1.5,
      dashPattern: const [4, 4],
      radius: const Radius.circular(8),
      borderType: BorderType.RRect,
      borderPadding: const EdgeInsets.all(0.5),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppTheme.takeQuizzInfoContainerPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppTheme.takeQuizzInfoContainerBorderRadius),
          color: AppColorScheme.surfaceContainer,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quizModel.title,
              style: context.textTheme.headlineMedium,
            ),
            const MediumVSpacer(),
            Text(
              quizModel.description,
              style: context.textTheme.bodyLarge,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
