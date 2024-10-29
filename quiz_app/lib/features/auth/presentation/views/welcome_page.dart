import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/res/media_res.dart';
import '../widgets/selection_page_body.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF0D121F),
                  Color(0x990D121F),
                  Color.fromARGB(255, 238, 238, 238),
                  Colors.white,
                ],
              ),
            ),
          ),
          SvgPicture.asset(
            MediaRes.eclipse,
            alignment: Alignment.topLeft,
          ),
          const SelectionPageBody(),
        ],
      ),
    );
  }
}
