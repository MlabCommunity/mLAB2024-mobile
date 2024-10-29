import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../extensions/context_extension.dart';
import '../../theme/app_color_scheme.dart';

class QuizzQrCode extends StatelessWidget {
  const QuizzQrCode({
    super.key,
    required this.link,
  });

  final String link;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: QrImageView(
        data: link,
        version: QrVersions.auto,
        size: context.width * 0.7,
        gapless: true,
        eyeStyle: const QrEyeStyle(
          eyeShape: QrEyeShape.square,
          color: AppColorScheme.textPrimary,
        ),
        dataModuleStyle: const QrDataModuleStyle(
          dataModuleShape: QrDataModuleShape.square,
          color: AppColorScheme.textPrimary,
        ),
      ),
    );
  }
}
