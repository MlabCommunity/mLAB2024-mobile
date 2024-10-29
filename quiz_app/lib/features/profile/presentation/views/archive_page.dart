import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/basic_app_bar.dart';
import '../../../../core/common/widgets/empty_list_widget.dart';
import '../../../../core/common/widgets/errors/basic_error_page.dart';
import '../../../../core/common/widgets/loading_indicator.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/res/media_res.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../generated/l10n.dart';
import '../../application/archive_controller.dart';
import '../widgets/quizz_archive_tile.dart';

@RoutePage()
class ArchivePage extends ConsumerStatefulWidget {
  const ArchivePage({super.key});

  @override
  ConsumerState<ArchivePage> createState() => _ArchivePageState();
}

class _ArchivePageState extends ConsumerState<ArchivePage> {
  @override
  void initState() {
    super.initState();
    ref.read(archiveControllerProvider.notifier).getQuizzArchive();
  }

  @override
  Widget build(BuildContext context) {
    final archiveState = ref.watch(archiveControllerProvider);
    final archivedQuizzes = archiveState.maybeWhen(
        success: (quizzList) {
          return quizzList;
        },
        orElse: () => []);
    return Scaffold(
      appBar: BasicAppBar(title: S.of(context).archiveAppBarTitle),
      body: Padding(
        padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
        child: archiveState.map(
          loading: (_) => const Center(child: LoadingIndicator()),
          success: (_) {
            if (archivedQuizzes.isEmpty) {
              return Column(
                children: [
                  EmptyListInfo(
                    message: S.of(context).archiveEmpty,
                  ),
                ],
              );
            } else {
              return ListView.separated(
                itemBuilder: (context, index) {
                  return QuizzArchiveTile(
                    quizz: archivedQuizzes[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return const MediumVSpacer();
                },
                itemCount: archivedQuizzes.length,
              );
            }
          },
          error: (_) => BasicErrorPage(
            onRefresh: () {
              ref.read(archiveControllerProvider.notifier).getQuizzArchive();
            },
            refreshButtonText: S.of(context).refreshButton,
            imageAsset: MediaRes.basicError,
            errorText: S.of(context).archiveLoadingError,
          ),
        ),
      ),
    );
  }
}
