import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/errors/basic_error_page.dart';
import '../../../../core/common/widgets/loading_indicator.dart';
import '../../../../core/res/media_res.dart';
import '../../../../generated/l10n.dart';
import '../../application/user_controller.dart';
import '../../../../core/common/widgets/basic_app_bar.dart';
import '../widgets/guest_profile_content.dart';
import '../widgets/profile_content.dart';

@RoutePage()
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(userControllerProvider.notifier).getUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    final userController = ref.read(userControllerProvider.notifier);
    final state = ref.watch(userControllerProvider);

    return Scaffold(
      appBar: BasicAppBar(
        title: S.of(context).profileAppbarTitle,
      ),
      body: state.maybeWhen(
        success: (user, isUsernameUpdating) => ProfileContent(user: user),
        guest: (user) {
          return GuestProfileContent(user: user);
        },
        orElse: () => const LoadingIndicator(),
        error: (error) {
          return Center(
            child: BasicErrorPage(
              onRefresh: () {
                userController.getUser();
              },
              refreshButtonText: S.of(context).refreshButton,
              imageAsset: MediaRes.basicError,
              errorText: S.of(context).somethingWentWrong,
            ),
          );
        },
      ),
    );
  }
}
