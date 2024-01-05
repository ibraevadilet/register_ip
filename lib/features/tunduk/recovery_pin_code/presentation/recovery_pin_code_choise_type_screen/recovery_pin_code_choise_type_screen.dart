import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:register_ip/core/functions/push_router_func.dart';
import 'package:register_ip/core/images/app_images.dart';
import 'package:register_ip/features/tunduk/recovery_pin_code/presentation/recovery_pin_code_choise_type_screen/widgets/choise_type_widget.dart';
import 'package:register_ip/features/tunduk/widgets_general/esi_background_image_widget.dart';
import 'package:register_ip/features/tunduk/widgets_general/top_title_widget.dart';
import 'package:register_ip/routes/mobile_auto_router.gr.dart';
import 'package:register_ip/widgets/custom_app_bar.dart';

@RoutePage()
class RecoveryPinCodeChoiseTypeScreen extends StatelessWidget {
  const RecoveryPinCodeChoiseTypeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ScaffoldBackgroundImageWidget(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const TopTitleWidget(
            title: 'Восстановление пин-кода',
            subTitle: 'Выберите способ восстановления\nпин-кода',
          ),
          ChoiseTypeWidget(
            onPressed: () {
              AppRouting.pushFunction(const RecoveryPinCodeEnterSmsCodeRoute());
            },
            title: 'Восстановить пароль через СМС',
            icon: AppImages.recoverySmsIconSvg,
          ),
          const SizedBox(height: 22),
          ChoiseTypeWidget(
            onPressed: () {
              AppRouting.pushFunction(const RecoveryPinCodeEnterSmsCodeRoute());
            },
            title: 'Восстановить пароль через почту',
            icon: AppImages.recoveryEmailIconSvg,
          ),
        ],
      ),
    );
  }
}
