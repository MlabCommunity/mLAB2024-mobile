import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/common/widgets/secondary_button.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/res/media_res.dart';
import '../views/sign_in_screen.dart';
import '../views/sing_up_screen.dart';
import '../../../../generated/l10n.dart';

class SelectionScreenBody extends StatelessWidget {
  const SelectionScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ).copyWith(bottom: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            MediaRes.logoSvg,
          ),
          const CustomVSpacer(80),
          BasicButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SignInScreen.routeName);
            },
            text: S.of(context).loginButton,
            width: double.infinity,
          ),
          const MediumVSpacer(),
          SecondaryButton(
            onPressed: () {
              context.navigator.pushNamed(SignUpScreen.routeName);
            },
            text: S.of(context).registerButton,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
