import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../generated/l10n.dart';
import '../../../extensions/context_extension.dart';
import '../../../services/app_router.dart';
import '../../../theme/app_color_scheme.dart';
import 'basic_dialog.dart';

class DeleteDialog extends ConsumerWidget {
  const DeleteDialog({
    super.key,
    required this.title,
    required this.content,
    required this.onConfirm,
    this.onCancel,
  });

  final String title;
  final Widget content;
  final void Function() onConfirm;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BasicDialog(title: title, content: content, actions: [
      ElevatedButton(
        onPressed: () {
          onCancel ?? ref.read(appRouterProvider).maybePop();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          S.of(context).cancelButton,
          style: context.theme.textTheme.labelMedium?.copyWith(color: AppColorScheme.primary),
        ),
      ),
      ElevatedButton(
        onPressed: onConfirm,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColorScheme.error,
        ),
        child: Text(
          S.of(context).deleteButton,
          style: context.theme.textTheme.labelMedium?.copyWith(color: AppColorScheme.textContrast),
        ),
      )
    ]);
  }

  void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => this,
    );
  }
}
