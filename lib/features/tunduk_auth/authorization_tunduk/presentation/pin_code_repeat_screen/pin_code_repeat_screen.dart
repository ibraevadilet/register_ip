import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:register_ip/core/functions/push_router_func.dart';
import 'package:register_ip/core/images/app_images.dart';
import 'package:register_ip/features/tunduk_auth/widgets_general/esi_background_image_widget.dart';
import 'package:register_ip/features/tunduk_auth/widgets_general/forgot_pin_text_widget.dart';
import 'package:register_ip/features/tunduk_auth/widgets_general/number_key_board_for_pin_code.dart';
import 'package:register_ip/features/tunduk_auth/widgets_general/pin_code_input_widget.dart';
import 'package:register_ip/routes/mobile_auto_router.gr.dart';
import 'package:register_ip/theme/app_colors.dart';
import 'package:register_ip/theme/app_text_styles.dart';

@RoutePage()
class PinCodeRepeatScreen extends StatefulWidget {
  const PinCodeRepeatScreen({super.key, required this.firstPin});
  final String firstPin;

  @override
  State<PinCodeRepeatScreen> createState() => _PinCodeRepeatScreenState();
}

class _PinCodeRepeatScreenState extends State<PinCodeRepeatScreen> {
  final pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ScaffoldBackgroundImageWidget(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Image.asset(
              AppImages.esiPinTextLogoWhite,
              height: 36,
            ),
            const SizedBox(height: 32),
            Text(
              'Повторите еще раз',
              style: AppTextStyles.s22W400(
                color: AppColors.color36424BGrey,
              ),
            ),
            const SizedBox(height: 12),
            PinCodeInputWidget(
              controller: pinController,
              onCompleted: (val) {
                AppRouting.pushAndPopUntilFunction(const PinCodeEnterRoute());
              },
              // validator: (val) => AppInputValidators.pinCodeRepeatValidator(
              //   str: val,
              //   firstPin: widget.firstPin,
              // ),
            ),
            const SizedBox(height: 20),
            NumberKeyBoardForPinCode(
              pinPutController: pinController,
            ),
            const ForgotPinTextWidget(),
          ],
        ),
      ),
    );
  }
}
