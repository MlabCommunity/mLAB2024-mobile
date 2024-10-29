import 'package:flutter/material.dart';
import 'back_button.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BasicAppBar({super.key, required this.title, this.actions, this.onBack});

  final String title;
  final List<Widget>? actions;
  final Function()? onBack;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        title: Text(title),
        actions: actions,
        leading: IBackButton(
          onPressed: onBack,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(36);
}
