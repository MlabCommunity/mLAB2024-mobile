import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/basic_app_bar.dart';
import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/common/widgets/errors/error_snackbar.dart';
import '../../../../core/common/widgets/form_field.dart';
import '../../../../core/common/widgets/secondary_button.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/services/app_router.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../generated/l10n.dart';

@RoutePage()
class JoinByCodePage extends ConsumerStatefulWidget {
  const JoinByCodePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _JoinByCodePageState();
}

class _JoinByCodePageState extends ConsumerState<JoinByCodePage> {
  final TextEditingController _textController = TextEditingController();
  String _code = '';

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {
        _code = _textController.text;
      });
    });
  }

  bool isCodeValid() {
    return _code.length == 8;
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(title: S.of(context).joinByCodeAppBarTitle),
      body: Padding(
        padding: const EdgeInsets.all(
          AppTheme.pageDefaultSpacingSize,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).joinByCodeHeading,
              style: context.textTheme.headlineLarge,
            ),
            const SmallVSpacer(),
            Text(
              S.of(context).joinByCodeSubheading,
              style: context.textTheme.bodyMedium,
            ),
            const ExtraLargeVSpacer(),
            IFormField(
              labelText: S.of(context).joinByCodeFormFieldLabel,
              hintText: S.of(context).joinByCodeFormFieldHint,
              controller: _textController,
            ),
            const ExtraLargeVSpacer(),
            SizedBox(
              width: double.infinity,
              child: isCodeValid()
                  ? BasicButton(
                      onPressed: () {
                        ref.read(appRouterProvider).replace(TakeQuizzRoute(joinCode: _code));
                      },
                      text: S.of(context).joinByCodeAccessButton,
                    )
                  : SecondaryButton(
                      onPressed: () {
                        ErrorSnackbar.show(
                          context,
                          S.of(context).joinByCodeInvalidCode,
                        );
                      },
                      text: S.of(context).joinByCodeAccessButton,
                      bgColor: AppColorScheme.disabled,
                      contentColor: AppColorScheme.textSecondary,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
