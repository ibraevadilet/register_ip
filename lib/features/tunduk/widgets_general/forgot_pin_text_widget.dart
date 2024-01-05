import 'package:flutter/material.dart';
import 'package:register_ip/core/functions/push_router_func.dart';
import 'package:register_ip/routes/mobile_auto_router.gr.dart';
import 'package:register_ip/theme/app_colors.dart';
import 'package:register_ip/theme/app_text_styles.dart';

class ForgotPinTextWidget extends StatelessWidget {
  const ForgotPinTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          TextButton(
            onPressed: () {
              AppRouting.pushFunction(
                  const RecoveryPinCodeEnterEsiPasswordRoute());
            },
            child: Text(
              'Забыли пин-код?',
              style: AppTextStyles.s16W400(
                color: AppColors.esiMainBlueColor,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
