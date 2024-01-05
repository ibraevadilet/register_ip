// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:register_ip/features/bottom_navigator/bottom_navigator_screen.dart'
    as _i4;
import 'package:register_ip/features/splash/splash_screen.dart' as _i16;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/auth_confirm_code_screen/auth_confirm_code_screen.dart'
    as _i1;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/auth_screen/auth_screen.dart'
    as _i2;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/auth_send_confirm_screen/auth_send_confirm_screen.dart'
    as _i3;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/error_screen/error_screen.dart'
    as _i5;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/pin_code_create_screen/pin_code_create_screen.dart'
    as _i6;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/pin_code_enter_screen/pin_code_enter_screen.dart'
    as _i7;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/pin_code_repeat_screen/pin_code_repeat_screen.dart'
    as _i8;
import 'package:register_ip/features/tunduk/recovery_password/presentation/recovery_password_choise_type_screen/recovery_password_choise_type_screen.dart'
    as _i9;
import 'package:register_ip/features/tunduk/recovery_password/presentation/recovery_password_enter_inn_screen/recovery_password_enter_inn_screen.dart'
    as _i10;
import 'package:register_ip/features/tunduk/recovery_password/presentation/recovery_password_enter_new_password_screen/recovery_password_enter_new_password_screen.dart'
    as _i11;
import 'package:register_ip/features/tunduk/recovery_password/presentation/recovery_password_enter_sms_code_screen/recovery_password_enter_sms_code_screen.dart'
    as _i12;
import 'package:register_ip/features/tunduk/recovery_pin_code/presentation/recovery_pin_code_choise_type_screen/recovery_pin_code_choise_type_screen.dart'
    as _i13;
import 'package:register_ip/features/tunduk/recovery_pin_code/presentation/recovery_pin_code_enter_esi_password_screen/recovery_pin_code_enter_esi_password_screen.dart'
    as _i14;
import 'package:register_ip/features/tunduk/recovery_pin_code/presentation/recovery_pin_code_enter_sms_code_screen/recovery_pin_code_enter_sms_code_screen.dart'
    as _i15;

abstract class $AppRouter extends _i17.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    AuthConfirmCodeRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthConfirmCodeScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthScreen(),
      );
    },
    AuthSendConfirmRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthSendConfirmScreen(),
      );
    },
    BottomNavigatorRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BottomNavigatorScreen(),
      );
    },
    EsiErrorRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EsiErrorScreen(),
      );
    },
    PinCodeCreateRoute.name: (routeData) {
      final args = routeData.argsAs<PinCodeCreateRouteArgs>(
          orElse: () => const PinCodeCreateRouteArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.PinCodeCreateScreen(
          key: args.key,
          isNewPin: args.isNewPin,
        ),
      );
    },
    PinCodeEnterRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.PinCodeEnterScreen(),
      );
    },
    PinCodeRepeatRoute.name: (routeData) {
      final args = routeData.argsAs<PinCodeRepeatRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.PinCodeRepeatScreen(
          key: args.key,
          firstPin: args.firstPin,
        ),
      );
    },
    RecoveryPasswordChoiseTypeRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.RecoveryPasswordChoiseTypeScreen(),
      );
    },
    RecoveryPasswordEnterInnRoute.name: (routeData) {
      final args = routeData.argsAs<RecoveryPasswordEnterInnRouteArgs>(
          orElse: () => const RecoveryPasswordEnterInnRouteArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.RecoveryPasswordEnterInnScreen(
          key: args.key,
          isSmsRecovery: args.isSmsRecovery,
        ),
      );
    },
    RecoveryPasswordEnterNewPasswordRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RecoveryPasswordEnterNewPasswordScreen(),
      );
    },
    RecoveryPasswordEnterSmsCodeRoute.name: (routeData) {
      final args = routeData.argsAs<RecoveryPasswordEnterSmsCodeRouteArgs>(
          orElse: () => const RecoveryPasswordEnterSmsCodeRouteArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.RecoveryPasswordEnterSmsCodeScreen(
          key: args.key,
          isSmsRecovery: args.isSmsRecovery,
        ),
      );
    },
    RecoveryPinCodeChoiseTypeRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.RecoveryPinCodeChoiseTypeScreen(),
      );
    },
    RecoveryPinCodeEnterEsiPasswordRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.RecoveryPinCodeEnterEsiPasswordScreen(),
      );
    },
    RecoveryPinCodeEnterSmsCodeRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RecoveryPinCodeEnterSmsCodeScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthConfirmCodeScreen]
class AuthConfirmCodeRoute extends _i17.PageRouteInfo<void> {
  const AuthConfirmCodeRoute({List<_i17.PageRouteInfo>? children})
      : super(
          AuthConfirmCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthConfirmCodeRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i17.PageRouteInfo<void> {
  const AuthRoute({List<_i17.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthSendConfirmScreen]
class AuthSendConfirmRoute extends _i17.PageRouteInfo<void> {
  const AuthSendConfirmRoute({List<_i17.PageRouteInfo>? children})
      : super(
          AuthSendConfirmRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthSendConfirmRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BottomNavigatorScreen]
class BottomNavigatorRoute extends _i17.PageRouteInfo<void> {
  const BottomNavigatorRoute({List<_i17.PageRouteInfo>? children})
      : super(
          BottomNavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EsiErrorScreen]
class EsiErrorRoute extends _i17.PageRouteInfo<void> {
  const EsiErrorRoute({List<_i17.PageRouteInfo>? children})
      : super(
          EsiErrorRoute.name,
          initialChildren: children,
        );

  static const String name = 'EsiErrorRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PinCodeCreateScreen]
class PinCodeCreateRoute extends _i17.PageRouteInfo<PinCodeCreateRouteArgs> {
  PinCodeCreateRoute({
    _i18.Key? key,
    bool isNewPin = false,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          PinCodeCreateRoute.name,
          args: PinCodeCreateRouteArgs(
            key: key,
            isNewPin: isNewPin,
          ),
          initialChildren: children,
        );

  static const String name = 'PinCodeCreateRoute';

  static const _i17.PageInfo<PinCodeCreateRouteArgs> page =
      _i17.PageInfo<PinCodeCreateRouteArgs>(name);
}

class PinCodeCreateRouteArgs {
  const PinCodeCreateRouteArgs({
    this.key,
    this.isNewPin = false,
  });

  final _i18.Key? key;

  final bool isNewPin;

  @override
  String toString() {
    return 'PinCodeCreateRouteArgs{key: $key, isNewPin: $isNewPin}';
  }
}

/// generated route for
/// [_i7.PinCodeEnterScreen]
class PinCodeEnterRoute extends _i17.PageRouteInfo<void> {
  const PinCodeEnterRoute({List<_i17.PageRouteInfo>? children})
      : super(
          PinCodeEnterRoute.name,
          initialChildren: children,
        );

  static const String name = 'PinCodeEnterRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PinCodeRepeatScreen]
class PinCodeRepeatRoute extends _i17.PageRouteInfo<PinCodeRepeatRouteArgs> {
  PinCodeRepeatRoute({
    _i18.Key? key,
    required String firstPin,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          PinCodeRepeatRoute.name,
          args: PinCodeRepeatRouteArgs(
            key: key,
            firstPin: firstPin,
          ),
          initialChildren: children,
        );

  static const String name = 'PinCodeRepeatRoute';

  static const _i17.PageInfo<PinCodeRepeatRouteArgs> page =
      _i17.PageInfo<PinCodeRepeatRouteArgs>(name);
}

class PinCodeRepeatRouteArgs {
  const PinCodeRepeatRouteArgs({
    this.key,
    required this.firstPin,
  });

  final _i18.Key? key;

  final String firstPin;

  @override
  String toString() {
    return 'PinCodeRepeatRouteArgs{key: $key, firstPin: $firstPin}';
  }
}

/// generated route for
/// [_i9.RecoveryPasswordChoiseTypeScreen]
class RecoveryPasswordChoiseTypeRoute extends _i17.PageRouteInfo<void> {
  const RecoveryPasswordChoiseTypeRoute({List<_i17.PageRouteInfo>? children})
      : super(
          RecoveryPasswordChoiseTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoveryPasswordChoiseTypeRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i10.RecoveryPasswordEnterInnScreen]
class RecoveryPasswordEnterInnRoute
    extends _i17.PageRouteInfo<RecoveryPasswordEnterInnRouteArgs> {
  RecoveryPasswordEnterInnRoute({
    _i18.Key? key,
    bool isSmsRecovery = false,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          RecoveryPasswordEnterInnRoute.name,
          args: RecoveryPasswordEnterInnRouteArgs(
            key: key,
            isSmsRecovery: isSmsRecovery,
          ),
          initialChildren: children,
        );

  static const String name = 'RecoveryPasswordEnterInnRoute';

  static const _i17.PageInfo<RecoveryPasswordEnterInnRouteArgs> page =
      _i17.PageInfo<RecoveryPasswordEnterInnRouteArgs>(name);
}

class RecoveryPasswordEnterInnRouteArgs {
  const RecoveryPasswordEnterInnRouteArgs({
    this.key,
    this.isSmsRecovery = false,
  });

  final _i18.Key? key;

  final bool isSmsRecovery;

  @override
  String toString() {
    return 'RecoveryPasswordEnterInnRouteArgs{key: $key, isSmsRecovery: $isSmsRecovery}';
  }
}

/// generated route for
/// [_i11.RecoveryPasswordEnterNewPasswordScreen]
class RecoveryPasswordEnterNewPasswordRoute extends _i17.PageRouteInfo<void> {
  const RecoveryPasswordEnterNewPasswordRoute(
      {List<_i17.PageRouteInfo>? children})
      : super(
          RecoveryPasswordEnterNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoveryPasswordEnterNewPasswordRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i12.RecoveryPasswordEnterSmsCodeScreen]
class RecoveryPasswordEnterSmsCodeRoute
    extends _i17.PageRouteInfo<RecoveryPasswordEnterSmsCodeRouteArgs> {
  RecoveryPasswordEnterSmsCodeRoute({
    _i18.Key? key,
    bool isSmsRecovery = false,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          RecoveryPasswordEnterSmsCodeRoute.name,
          args: RecoveryPasswordEnterSmsCodeRouteArgs(
            key: key,
            isSmsRecovery: isSmsRecovery,
          ),
          initialChildren: children,
        );

  static const String name = 'RecoveryPasswordEnterSmsCodeRoute';

  static const _i17.PageInfo<RecoveryPasswordEnterSmsCodeRouteArgs> page =
      _i17.PageInfo<RecoveryPasswordEnterSmsCodeRouteArgs>(name);
}

class RecoveryPasswordEnterSmsCodeRouteArgs {
  const RecoveryPasswordEnterSmsCodeRouteArgs({
    this.key,
    this.isSmsRecovery = false,
  });

  final _i18.Key? key;

  final bool isSmsRecovery;

  @override
  String toString() {
    return 'RecoveryPasswordEnterSmsCodeRouteArgs{key: $key, isSmsRecovery: $isSmsRecovery}';
  }
}

/// generated route for
/// [_i13.RecoveryPinCodeChoiseTypeScreen]
class RecoveryPinCodeChoiseTypeRoute extends _i17.PageRouteInfo<void> {
  const RecoveryPinCodeChoiseTypeRoute({List<_i17.PageRouteInfo>? children})
      : super(
          RecoveryPinCodeChoiseTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoveryPinCodeChoiseTypeRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RecoveryPinCodeEnterEsiPasswordScreen]
class RecoveryPinCodeEnterEsiPasswordRoute extends _i17.PageRouteInfo<void> {
  const RecoveryPinCodeEnterEsiPasswordRoute(
      {List<_i17.PageRouteInfo>? children})
      : super(
          RecoveryPinCodeEnterEsiPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoveryPinCodeEnterEsiPasswordRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i15.RecoveryPinCodeEnterSmsCodeScreen]
class RecoveryPinCodeEnterSmsCodeRoute extends _i17.PageRouteInfo<void> {
  const RecoveryPinCodeEnterSmsCodeRoute({List<_i17.PageRouteInfo>? children})
      : super(
          RecoveryPinCodeEnterSmsCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoveryPinCodeEnterSmsCodeRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SplashScreen]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}
