import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:register_ip/core/functions/push_router_func.dart';
import 'package:register_ip/core/images/app_images.dart';
import 'package:register_ip/routes/mobile_auto_router.gr.dart';
import 'package:register_ip/theme/app_colors.dart';
import 'package:register_ip/theme/app_text_styles.dart';
import 'package:register_ip/widgets/floating_bottom_area.dart';
import 'package:register_ip/widgets/floating_button.dart';

@RoutePage()
class CesFinish extends StatelessWidget {
  const CesFinish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: FloatingBottomArea(
          areaContent: Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: FloatingButton(
                title: 'Выход',
                bkgColor: AppColors.colorE62F2EMain,
                onTap: () =>
                    AppRouting.pushAndPopUntilFunction(const AuthRoute())),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 48),
              SizedBox(
                height: 172,
                child: Image.asset(AppImages.cesImage),
              ),
              const Text(
                'Ваш пароль от облачной электронной\nодписи будет выслан Вам на почту',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text(
                'Ознакомиться с Соглашением о присоединении к\nрегламенту УЦ ГП «Инфоком»',
                style: AppTextStyles.s14W400(color: AppColors.color34C759Green)
                    .copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.color34C759Green),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
