import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_ip/core/constants/app_text_constants.dart';
import 'package:register_ip/core/formatters/validators.dart';
import 'package:register_ip/core/functions/push_router_func.dart';
import 'package:register_ip/features/register_oep/presentation/oep_register_screen/cubits/register_oep_cubit/register_oep_cubit.dart';
import 'package:register_ip/features/register_oep/presentation/oep_register_screen/widgets/register_check_box_widget.dart';
import 'package:register_ip/routes/mobile_auto_router.gr.dart';
import 'package:register_ip/server/service_locator.dart';
import 'package:register_ip/theme/app_colors.dart';
import 'package:register_ip/theme/app_text_styles.dart';
import 'package:register_ip/widgets/app_unfocuser.dart';
import 'package:register_ip/widgets/custom_app_bar.dart';
import 'package:register_ip/widgets/custom_button.dart';
import 'package:register_ip/widgets/custom_text_fields.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class OEPRegisterScreen extends StatelessWidget {
  const OEPRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RegisterOepCubit>(),
      child: AppUnfocuser(
        child: Scaffold(
          appBar: const CustomAppBar(
            title: 'Удаленное получение ОЭП',
          ),
          body: SafeArea(
            child: Builder(
              builder: (context) => Form(
                key: context.read<RegisterOepCubit>().useCase.formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(height: 24),
                              CustomTextField(
                                maxLength: 14,
                                labelText: 'ИНН',
                                keyboardType: TextInputType.number,
                                validator: AppInputValidators.emptyValidator,
                                controller: context
                                    .read<RegisterOepCubit>()
                                    .useCase
                                    .innController,
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: CustomTextField(
                                      controller: context
                                          .read<RegisterOepCubit>()
                                          .useCase
                                          .idController,
                                      labelText: 'ID/AN',
                                      maxLength: 2,
                                      validator:
                                          AppInputValidators.emptyValidator,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Flexible(
                                    flex: 4,
                                    child: CustomTextField(
                                      controller: context
                                          .read<RegisterOepCubit>()
                                          .useCase
                                          .passNumberController,
                                      maxLength: 7,
                                      labelText: 'Номер Паспорта',
                                      keyboardType: TextInputType.number,
                                      validator:
                                          AppInputValidators.emptyValidator,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              CustomTextField(
                                controller: context
                                    .read<RegisterOepCubit>()
                                    .useCase
                                    .phoneNumber,
                                labelText: 'Номер телефона',
                                keyboardType: TextInputType.phone,
                                validator: AppInputValidators.emptyValidator,
                              ),
                              const SizedBox(height: 8),
                              CustomTextField(
                                controller: context
                                    .read<RegisterOepCubit>()
                                    .useCase
                                    .emailController,
                                labelText: 'Адрес электронной почты',
                                keyboardType: TextInputType.emailAddress,
                                validator: AppInputValidators.emptyValidator,
                              ),
                              const SizedBox(height: 16),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const RegisterCheckBoxWidget(),
                                  const SizedBox(width: 14),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () async {
                                        final Uri url = Uri.parse(
                                            '${AppTextConstants.userStatement}ru');
                                        if (!await launchUrl(
                                          url,
                                          mode: LaunchMode.externalApplication,
                                        )) {
                                          throw Exception(
                                            'Could not launch $url',
                                          );
                                        }
                                      },
                                      child: Text(
                                        'Я соглашаюсь на создание учетной записи в системе ЕСИ и предоставляю необходимую информацию для регистрации.',
                                        style: AppTextStyles.s14W400().copyWith(
                                          color: AppColors.color34C759Green,
                                          decoration: TextDecoration.underline,
                                          decorationColor:
                                              AppColors.color34C759Green,
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
                      CustomButton(
                        radius: 16,
                        color: AppColors.color1EA31EGreen,
                        onPress: () {
                          if (context
                                  .read<RegisterOepCubit>()
                                  .useCase
                                  .isCheckedGetter &&
                              context
                                  .read<RegisterOepCubit>()
                                  .useCase
                                  .formKey
                                  .currentState!
                                  .validate()) {
                            AppRouting.pushFunction(const CesSelfieRoute());
                          }
                        },
                        child: Text(
                          'Далее',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.s16W700(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
