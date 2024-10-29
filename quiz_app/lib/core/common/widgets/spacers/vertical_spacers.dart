import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class ExtraSmallVSpacer extends StatelessWidget {
  const ExtraSmallVSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: AppTheme.extraSmallSpacerValue);
  }
}

class SmallVSpacer extends StatelessWidget {
  const SmallVSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: AppTheme.smallSpacerValue);
  }
}

class MediumVSpacer extends StatelessWidget {
  const MediumVSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: AppTheme.mediumSpacerValue);
  }
}

class LargeVSpacer extends StatelessWidget {
  const LargeVSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: AppTheme.largeSpacerValue);
  }
}

class ExtraLargeVSpacer extends StatelessWidget {
  const ExtraLargeVSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: AppTheme.extraLargeSpacerValue);
  }
}

class CustomVSpacer extends StatelessWidget {
  const CustomVSpacer(this.height, {super.key});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
