import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:register_ip/core/images/app_images.dart';
import 'package:register_ip/theme/app_text_styles.dart';
import 'package:register_ip/widgets/custom_app_bar.dart';
import 'package:register_ip/widgets/custom_text_fields.dart';

@RoutePage()
class RegisterIPTypeOfActivityScreen extends StatelessWidget {
  const RegisterIPTypeOfActivityScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'Поиск',
              prefixIcon: Container(
                height: 24,
                width: 24,
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  AppImages.searchIcon,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemBuilder: (context, index) => Text(
                  'Разведение сельскохозяйственной птицы',
                  style: AppTextStyles.s16W500(),
                ),
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
