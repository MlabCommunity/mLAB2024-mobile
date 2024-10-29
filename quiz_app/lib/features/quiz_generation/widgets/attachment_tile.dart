import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/res/media_res.dart';
import '../../../core/theme/app_color_scheme.dart';
import '../application/quiz_generation_controller.dart';

class AttachmentTile extends ConsumerWidget {
  const AttachmentTile({super.key, required this.fileName});

  final String fileName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizzGenerationController = ref.read(quizGenerationControllerProvider.notifier);
    final state = ref.watch(quizGenerationControllerProvider);

    final fileFormat = fileName.split('.').last;
    var filenameWithoutFormat = fileName.split('.').first;

    if (filenameWithoutFormat.length > 20) {
      filenameWithoutFormat = '${filenameWithoutFormat.substring(0, 20)}[...]';
    }
    final displayedFileName = '$filenameWithoutFormat.$fileFormat';

    return ListTile(
      title: Text(
        displayedFileName,
        style: context.textTheme.bodyMedium?.copyWith(
          color: AppColorScheme.textSecondary,
        ),
      ),
      leading: SvgPicture.asset(MediaRes.attachment),
      trailing: GestureDetector(
        onTap: () {
          state.maybeWhen(
            generating: (request) {
              request = request.copyWith(
                attachments: request.attachments.where((element) => element.name != fileName).toList(),
              );
              quizzGenerationController.modifyRequest(request);
            },
            orElse: () {},
          );
        },
        child: SvgPicture.asset(
          MediaRes.trash,
          colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcIn),
        ),
      ),
    );
  }
}
