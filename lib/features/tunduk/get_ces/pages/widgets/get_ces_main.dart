import 'package:flutter/material.dart';
import 'package:register_ip/core/functions/push_router_func.dart';
import 'package:register_ip/routes/mobile_auto_router.gr.dart';
import 'package:register_ip/theme/app_colors.dart';
import 'package:register_ip/theme/app_text_styles.dart';
import 'package:register_ip/widgets/custom_text_fields.dart';
import 'package:register_ip/widgets/floating_bottom_area.dart';
import 'package:register_ip/widgets/floating_button.dart';

class GetCesMain extends StatelessWidget {
  const GetCesMain({
    super.key,
    required this.emailController,
    required this.idController,
    required this.passwordController,
    required this.innController,
    required this.phoneNumbe,
  });

  final TextEditingController emailController;
  final TextEditingController idController;
  final TextEditingController passwordController;
  final TextEditingController innController;
  final TextEditingController phoneNumbe;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FloatingBottomArea(
        areaContent: FloatingButton(
          onTap: () {
            AppRouting.pushFunction(CesSelfieRoute());
          },
          title: 'Далее',
          bkgColor: AppColors.colorE62F2EMain,
        ),
        child: Form(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 24),
                const CustomTextField(
                  maxLength: 14,
                  labelText: 'ИНН',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 8),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 2,
                      child: CustomTextField(
                        labelText: 'ID/AN',
                        maxLength: 2,
                      ),
                    ),
                    SizedBox(width: 12),
                    Flexible(
                      flex: 4,
                      child: CustomTextField(
                        maxLength: 7,
                        labelText: 'Номер Паспорта',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const CustomTextField(
                  labelText: 'Номер телефона',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 8),
                const CustomTextField(
                  labelText: 'Адрес электронной почты',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 16,
                      child: Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        side: const BorderSide(
                          width: 2.0,
                        ),
                        value: false,
                        onChanged: (_) {},
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Я соглашаюсь на создание учетной записи в системе ЕСИ и предоставляю необходимую информацию для регистрации.',
                          style: AppTextStyles.s14W400().copyWith(
                            color: AppColors.color34C759Green,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.color34C759Green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
