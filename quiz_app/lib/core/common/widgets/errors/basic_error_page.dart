import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../extensions/context_extension.dart';
import '../../../res/media_res.dart';
import '../secondary_button.dart';
import '../spacers/vertical_spacers.dart';

@RoutePage()
class BasicErrorPage extends StatelessWidget {
  const BasicErrorPage({super.key, required this.onRefresh, required this.refreshButtonText});

  final VoidCallback onRefresh;
  final String refreshButtonText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  MediaRes.basicError,
                  width: 128,
                  height: 128,
                ),
                const LargeVSpacer(),
                Text(
                  //TODO: replace with translation
                  'An error occurred. Please try again or contact the administrator',
                  style: context.theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const LargeVSpacer(),
                SecondaryButton(onPressed: onRefresh, text: refreshButtonText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
