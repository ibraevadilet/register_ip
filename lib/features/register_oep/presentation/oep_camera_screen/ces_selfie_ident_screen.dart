import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:register_ip/core/functions/push_router_func.dart';
import 'package:register_ip/core/images/app_images.dart';
import 'package:register_ip/core/utils/scanner_utils.dart';
import 'package:register_ip/routes/mobile_auto_router.gr.dart';
import 'package:register_ip/theme/app_colors.dart';
import 'package:register_ip/theme/app_text_styles.dart';
import 'package:register_ip/widgets/custom_app_bar.dart';
import 'package:register_ip/widgets/floating_bottom_area.dart';
import 'package:register_ip/widgets/floating_button.dart';

@RoutePage()
class CesSelfieScreen extends StatelessWidget {
  const CesSelfieScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: FloatingBottomArea(
          areaContent: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: FloatingButton(
              bkgColor: AppColors.colorE62F2EMain,
              title: 'Сделать фото',
              onTap: () async {
                var permissionsGranted =
                    await Permission.camera.request().isGranted;
                if (permissionsGranted && Platform.isAndroid) {
                  permissionsGranted =
                      await Permission.microphone.request().isGranted;
                }
                if (permissionsGranted) {
                  AppRouting.pushFunction(
                    OEPCameraRoute(
                      description: await ScannerUtils.getCamera(
                        CameraLensDirection.front,
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppImages.selfieIdentIconSvg,
                ),
                const SizedBox(height: 22.0),
                Text(
                  'Необходимо сфотографировать себя',
                  style: AppTextStyles.s16W400().copyWith(height: 1.5),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24.0),
                Text(
                  'Важно!',
                  style: AppTextStyles.s18W700().copyWith(
                    color: AppColors.colorFF0000Red,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Убедитесь, что на Вас нет\nочков или головного убора',
                  style: AppTextStyles.s16W500().copyWith(height: 1.4),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
