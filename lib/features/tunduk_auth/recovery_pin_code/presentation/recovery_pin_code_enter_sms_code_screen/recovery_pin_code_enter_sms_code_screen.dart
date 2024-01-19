import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:register_ip/core/functions/push_router_func.dart';
import 'package:register_ip/features/tunduk_auth/widgets_general/esi_background_image_widget.dart';
import 'package:register_ip/features/tunduk_auth/widgets_general/sms_code_input_widget.dart';
import 'package:register_ip/features/tunduk_auth/widgets_general/top_title_widget.dart';
import 'package:register_ip/routes/mobile_auto_router.gr.dart';
import 'package:register_ip/theme/app_colors.dart';
import 'package:register_ip/widgets/custom_app_bar.dart';
import 'package:register_ip/widgets/custom_button.dart';

@RoutePage()
class RecoveryPinCodeEnterSmsCodeScreen extends StatelessWidget {
  const RecoveryPinCodeEnterSmsCodeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ScaffoldBackgroundImageWidget(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const TopTitleWidget(
            title: 'Восстановление пин-кода',
            subTitle:
                'Мы отправили SMS с шестизначным кодом\nподтверждения на номер +99670*****16\nВведите код.',
          ),
          const SmsCodeInputWidget(),
          const SizedBox(height: 42),
          CustomButton(
            color: AppColors.esiMainBlueColor,
            onPress: () {
              AppRouting.pushFunction( PinCodeCreateRoute(isNewPin: true));
            },
            text: 'Продолжить',
          ),
        ],
      ),
    );
  }
}
