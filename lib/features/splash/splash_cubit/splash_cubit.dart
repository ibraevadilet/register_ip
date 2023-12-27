import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:register_ip/core/constants/shared_keys.dart';
import 'package:register_ip/core/functions/push_router_func.dart';
import 'package:register_ip/routes/mobile_auto_router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit({required this.prefs}) : super(const SplashState.initial());
  final SharedPreferences prefs;

  Future<void> getFirstOpenStatus() async {
    final token = prefs.getString(SharedKeys.token) ?? '';
    await Future.delayed(const Duration(seconds: 2));
    if (token.isEmpty) {
      AppRouting.pushAndPopUntilFunction(const AuthRoute());
    } else {
      AppRouting.pushAndPopUntilFunction(const BottomNavigatorRoute());
    }
  }
}
