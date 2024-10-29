import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../res/media_res.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        MediaRes.loadingAnimation,
        width: 200,
        height: 200,
      ),
    );
  }
}
