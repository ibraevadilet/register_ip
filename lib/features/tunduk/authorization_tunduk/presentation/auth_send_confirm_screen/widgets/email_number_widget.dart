import 'package:flutter/material.dart';
import 'package:register_ip/theme/app_colors.dart';
import 'package:register_ip/theme/app_text_styles.dart';

class EmailNumberWidget extends StatelessWidget {
  const EmailNumberWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 1,
            color: AppColors.color4479BABlue.withOpacity(0.1),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: AppColors.color617796Grey.withOpacity(0.1),
        ),
      ),
      child: Column(
        children: [
          Text(
            'g***************k@gmail.com',
            style: AppTextStyles.s14W600(),
          ),
          Text(
            '+996 555 ** ** *5',
            style: AppTextStyles.s14W600(),
          ),
        ],
      ),
    );
  }
}
