import 'package:flutter/material.dart';
import '../../theme/app_color_scheme.dart';

class IVerticalDivider extends StatelessWidget {
  const IVerticalDivider({
    super.key,
    this.color = AppColorScheme.border,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: VerticalDivider(
        color: color,
        width: 1,
      ),
    );
  }
}
