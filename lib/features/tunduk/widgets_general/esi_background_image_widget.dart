import 'package:flutter/material.dart';
import 'package:register_ip/core/images/app_images.dart';
import 'package:register_ip/widgets/app_unfocuser.dart';

class ScaffoldBackgroundImageWidget extends StatelessWidget {
  const ScaffoldBackgroundImageWidget({
    super.key,
    required this.body,
    this.appBar,
    this.bgColor,
  });

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? Colors.white,
        image: const DecorationImage(
          alignment: Alignment.bottomCenter,
          image: AssetImage(AppImages.esiWaveImage),
        ),
      ),
      child: AppUnfocuser(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: body,
          ),
        ),
      ),
    );
  }
}
