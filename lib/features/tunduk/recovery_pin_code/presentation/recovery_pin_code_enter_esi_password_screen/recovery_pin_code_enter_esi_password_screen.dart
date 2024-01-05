import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:register_ip/core/functions/push_router_func.dart';
import 'package:register_ip/core/images/app_images.dart';
import 'package:register_ip/features/tunduk/widgets_general/esi_background_image_widget.dart';
import 'package:register_ip/features/tunduk/widgets_general/top_title_widget.dart';
import 'package:register_ip/routes/mobile_auto_router.gr.dart';
import 'package:register_ip/theme/app_colors.dart';
import 'package:register_ip/theme/app_text_styles.dart';
import 'package:register_ip/widgets/custom_app_bar.dart';
import 'package:register_ip/widgets/custom_button.dart';
import 'package:register_ip/widgets/esi_text_filed.dart';

@RoutePage()
class RecoveryPinCodeEnterEsiPasswordScreen extends StatelessWidget {
  const RecoveryPinCodeEnterEsiPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ScaffoldBackgroundImageWidget(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TopTitleWidget(
              title: 'Восстановление  пин-кода',
            ),
            const EsiTextFiled(
              hintText: 'Пароль',
              prfixIcon: AppImages.passwordIconSvg,
              obscureText: true,
            ),
            const SizedBox(height: 42),
            CustomButton(
              color: AppColors.esiMainBlueColor,
              onPress: () {
                AppRouting.pushFunction(const RecoveryPinCodeChoiseTypeRoute());
              },
              text: 'Продолжить',
            ),
            const SizedBox(height: 22),
            Text.rich(
              TextSpan(
                text: 'Забыли пароль? ',
                style: AppTextStyles.s14W600(color: AppColors.color727D8DGrey),
                children: [
                  TextSpan(
                    text: 'Восстановите',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        AppRouting.pushFunction(
                            const RecoveryPasswordChoiseTypeRoute());
                      },
                    style: AppTextStyles.s14W600(
                        color: AppColors.esiMainBlueColor),
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
