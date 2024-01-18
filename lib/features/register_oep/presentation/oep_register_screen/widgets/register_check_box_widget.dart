import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_ip/features/register_oep/presentation/oep_register_screen/cubits/register_oep_cubit/register_oep_cubit.dart';
import 'package:register_ip/theme/app_colors.dart';

class RegisterCheckBoxWidget extends StatefulWidget {
  const RegisterCheckBoxWidget({super.key});
  @override
  State<RegisterCheckBoxWidget> createState() => _RegisterCheckBoxWidgetState();
}

class _RegisterCheckBoxWidgetState extends State<RegisterCheckBoxWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 16,
      child: Checkbox(
        activeColor: AppColors.color54B25AMain,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        side: const BorderSide(
          width: 2.0,
        ),
        value: isChecked,
        onChanged: (val) {
          setState(() {
            isChecked = val!;
          });
          context.read<RegisterOepCubit>().getIsChecked(isChecked);
        },
      ),
    );
  }
}
