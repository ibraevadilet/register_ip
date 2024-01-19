import 'package:flutter/material.dart';
import 'package:register_ip/core/formatters/shapes.dart';
import 'package:register_ip/core/images/app_images.dart';
import 'package:register_ip/theme/app_colors.dart';
import 'package:register_ip/theme/app_text_styles.dart';
import 'package:register_ip/widgets/custom_button.dart';
import 'package:register_ip/widgets/spaces.dart';

Future<void> showSuccessDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: AppShapes.dialogShape(),
      content: SizedBox(
        width: context.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppImages.esiSuccessIcon,
              height: 70,
            ),
            const SizedBox(height: 22),
            Text(
              'Вы успешно\nсбросили пароль',
              style: AppTextStyles.s22W600(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 22),
            CustomButton(
              color: AppColors.esiMainBlueColor,
              onPress: () {
                Navigator.pop(context);
              },
              text: 'OK',
            )
          ],
        ),
      ),
    ),
  );
}
