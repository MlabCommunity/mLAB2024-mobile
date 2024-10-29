import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/common/widgets/basic_app_bar.dart';
import '../../../core/services/app_router.dart';
import '../../../core/theme/app_color_scheme.dart';
import '../application/quiz_generation_controller.dart';
import 'quizz_configure_page.dart';
import 'quizz_preview_page.dart';
import 'quizz_success_page.dart';
import 'quizz_text_prompt_page.dart';
import '../widgets/quit_quizz_creation_dialog.dart';
import '../../../generated/l10n.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class QuizzCreationPage extends ConsumerStatefulWidget {
  const QuizzCreationPage({super.key});

  @override
  ConsumerState<QuizzCreationPage> createState() => _QuizzCreationPageState();
}

class _QuizzCreationPageState extends ConsumerState<QuizzCreationPage> {
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> getPages() {
    return [
      QuizzTextPromptPage(
        pageController: _controller,
      ),
      QuizzConfigurePage(
        pageController: _controller,
      ),
      QuizzPreviewPage(
        pageController: _controller,
      ),
      const QuizzSuccessPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(quizGenerationControllerProvider);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            if (_controller.page!.toInt() == getPages().length - 1) {
              ref.read(appRouterProvider).replaceAll([const DashboardRoute()]);
            } else {
              QuitQuizzCreationDialog.show(context);
            }
          });
        }
      },
      child: Scaffold(
        appBar: BasicAppBar(
          title: S.of(context).quizzCreationAppBarTitle,
          onBack: () {
            if (_controller.page!.toInt() == getPages().length - 1) {
              ref.read(appRouterProvider).replaceAll([const DashboardRoute()]);
            } else {
              QuitQuizzCreationDialog.show(context);
            }
          },
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: getPages().length,
                  effect: const WormEffect(
                    dotColor: AppColorScheme.secondary,
                    activeDotColor: AppColorScheme.primary,
                    dotHeight: 8,
                    dotWidth: 32,
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                children: getPages(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
