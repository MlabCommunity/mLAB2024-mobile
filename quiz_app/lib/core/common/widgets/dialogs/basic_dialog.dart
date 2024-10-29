import 'package:flutter/material.dart';
import '../../../extensions/context_extension.dart';
import '../../../theme/app_color_scheme.dart';

class BasicDialog extends StatelessWidget {
  const BasicDialog({
    super.key,
    required this.title,
    required this.content,
    this.actions,
  });

  final String title;
  final Widget content;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColorScheme.dialogBackground,
      contentPadding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      insetPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: Text(title, style: context.theme.textTheme.headlineSmall),
      content: content,
      actions: actions,
    );
  }
}
