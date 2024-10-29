import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paginated_list/paginated_list.dart';
import '../../../../core/common/widgets/loading_indicator.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../application/quiz_details_controller.dart';
import '../../domain/participant_model.dart';
import '../widgets/quiz_attempt_item.dart';
import '../../../../generated/l10n.dart';

class QuizDetailsStatisticsTab extends ConsumerWidget {
  const QuizDetailsStatisticsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(quizDetailsControllerProvider.notifier);
    final state = ref.watch(quizDetailsControllerProvider);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).quizzDetailsTabStatisticsSubheading,
              style: context.textTheme.bodyMedium!.copyWith(color: AppColorScheme.textSecondary),
            ),
            const MediumVSpacer(),
            state.maybeWhen(
              loaded: (quizDetails, _, pageNumber) {
                if (quizDetails.participants.items.isEmpty) {
                  return Center(
                    child: Text(S.of(context).quizzDetailsTabStatisticsNoParticipants, style: context.textTheme.labelLarge),
                  );
                }
                return Theme(
                  data: AppTheme.theme.copyWith(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                  ),
                  child: PaginatedList<ParticipantModel>(
                    items: quizDetails.participants.items,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    builder: (context, index) {
                      return Column(
                        children: [
                          QuizAttemptItem(participant: quizDetails.participants.items[index]),
                          const MediumVSpacer(),
                        ],
                      );
                    },
                    isLastPage: quizDetails.participants.items.length >= quizDetails.participants.totalItemsCount,
                    isRecentSearch: false,
                    loadingIndicator: const LoadingIndicator(),
                    onLoadMore: (index) {
                      controller.loadParticipants();
                    },
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
