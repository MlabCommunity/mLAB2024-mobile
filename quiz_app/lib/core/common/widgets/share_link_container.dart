import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../extensions/context_extension.dart';
import '../../res/media_res.dart';
import '../../theme/app_color_scheme.dart';
import '../../theme/app_theme.dart';

class ShareLinkContainer extends StatefulWidget {
  const ShareLinkContainer({
    super.key,
    required this.link,
    required this.color,
  });

  final String link;
  final Color color;

  @override
  State<ShareLinkContainer> createState() => _ShareLinkContainerState();
}

class _ShareLinkContainerState extends State<ShareLinkContainer> {
  bool copied = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              widget.link,
              style: context.textTheme.bodyLarge?.copyWith(
                color: Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          IconButton(
            onPressed: () async {
              Clipboard.setData(ClipboardData(text: widget.link));
              //InfoSnackbar.show(context, S.of(context).linkCopied,
              //    color: AppColorScheme.primary);
              setState(() {
                copied = true;
              });
              Future.delayed(const Duration(seconds: AppTheme.copyLinkIconChangeDuration), () {
                if(mounted){
                  setState(() {
                    copied = false;
                  });
                }
              });
            },
            icon: copied
                ? const Icon(
                    Icons.done,
                    color: AppColorScheme.primary,
                  )
                : SvgPicture.asset(
                    MediaRes.copy,
                    colorFilter: const ColorFilter.mode(
                      AppColorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
