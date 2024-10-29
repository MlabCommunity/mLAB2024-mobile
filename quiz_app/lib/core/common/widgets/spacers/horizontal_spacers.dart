import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class ExtraSmallHSpacer extends StatelessWidget {
  const ExtraSmallHSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: AppTheme.extraSmallSpacerValue);
  }
}

class SmallHSpacer extends StatelessWidget {
  const SmallHSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: AppTheme.smallSpacerValue);
  }
}

class MediumHSpacer extends StatelessWidget {
  const MediumHSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: AppTheme.mediumSpacerValue);
  }
}

class LargeHSpacer extends StatelessWidget {
  const LargeHSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: AppTheme.largeSpacerValue);
  }
}

class ExtraLargeHSpacer extends StatelessWidget {
  const ExtraLargeHSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: AppTheme.extraLargeSpacerValue);
  }
}

class CustomHSpacer extends StatelessWidget {
  const CustomHSpacer(this.width, {super.key});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
