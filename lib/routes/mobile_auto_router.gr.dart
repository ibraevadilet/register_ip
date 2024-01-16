// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:camera/camera.dart' as _i24;
import 'package:flutter/material.dart' as _i23;
import 'package:register_ip/features/bottom_navigator/bottom_navigator_screen.dart'
    as _i4;
import 'package:register_ip/features/register_oep/presentation/oep_camera_screen/ces_selfie_ident_screen.dart'
    as _i5;
import 'package:register_ip/features/register_oep/presentation/oep_camera_screen/oep_camera_screen.dart'
    as _i7;
import 'package:register_ip/features/register_oep/presentation/oep_camera_screen/selife_preview_screen.dart'
    as _i20;
import 'package:register_ip/features/register_oep/presentation/oep_finish_screen/oep_finish_screen.dart'
    as _i8;
import 'package:register_ip/features/register_oep/presentation/oep_register_screen/oep_register_screen.dart'
    as _i9;
import 'package:register_ip/features/splash/splash_screen.dart' as _i21;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/auth_confirm_code_screen/auth_confirm_code_screen.dart'
    as _i1;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/auth_screen/auth_screen.dart'
    as _i2;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/auth_send_confirm_screen/auth_send_confirm_screen.dart'
    as _i3;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/error_screen/error_screen.dart'
    as _i6;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/pin_code_create_screen/pin_code_create_screen.dart'
    as _i10;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/pin_code_enter_screen/pin_code_enter_screen.dart'
    as _i11;
import 'package:register_ip/features/tunduk/authorization_tunduk/presentation/pin_code_repeat_screen/pin_code_repeat_screen.dart'
    as _i12;
import 'package:register_ip/features/tunduk/recovery_password/presentation/recovery_password_choise_type_screen/recovery_password_choise_type_screen.dart'
    as _i13;
import 'package:register_ip/features/tunduk/recovery_password/presentation/recovery_password_enter_inn_screen/recovery_password_enter_inn_screen.dart'
    as _i14;
import 'package:register_ip/features/tunduk/recovery_password/presentation/recovery_password_enter_new_password_screen/recovery_password_enter_new_password_screen.dart'
    as _i15;
import 'package:register_ip/features/tunduk/recovery_password/presentation/recovery_password_enter_sms_code_screen/recovery_password_enter_sms_code_screen.dart'
    as _i16;
import 'package:register_ip/features/tunduk/recovery_pin_code/presentation/recovery_pin_code_choise_type_screen/recovery_pin_code_choise_type_screen.dart'
    as _i17;
import 'package:register_ip/features/tunduk/recovery_pin_code/presentation/recovery_pin_code_enter_esi_password_screen/recovery_pin_code_enter_esi_password_screen.dart'
    as _i18;
import 'package:register_ip/features/tunduk/recovery_pin_code/presentation/recovery_pin_code_enter_sms_code_screen/recovery_pin_code_enter_sms_code_screen.dart'
    as _i19;

abstract class $AppRouter extends _i22.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i22.PageFactory> pagesMap = {
    AuthConfirmCodeRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthConfirmCodeScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthScreen(),
      );
    },
    AuthSendConfirmRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthSendConfirmScreen(),
      );
    },
    BottomNavigatorRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BottomNavigatorScreen(),
      );
    },
    CesSelfieRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CesSelfieScreen(),
      );
    },
    EsiErrorRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.EsiErrorScreen(),
      );
    },
    OEPCameraRoute.name: (routeData) {
      final args = routeData.argsAs<OEPCameraRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.OEPCameraScreen(
          key: args.key,
          description: args.description,
        ),
      );
    },
    OEPFinishRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OEPFinishScreen(),
      );
    },
    OEPRegisterRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OEPRegisterScreen(),
      );
    },
    PinCodeCreateRoute.name: (routeData) {
      final args = routeData.argsAs<PinCodeCreateRouteArgs>(
          orElse: () => const PinCodeCreateRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.PinCodeCreateScreen(
          key: args.key,
          isNewPin: args.isNewPin,
        ),
      );
    },
    PinCodeEnterRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.PinCodeEnterScreen(),
      );
    },
    PinCodeRepeatRoute.name: (routeData) {
      final args = routeData.argsAs<PinCodeRepeatRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.PinCodeRepeatScreen(
          key: args.key,
          firstPin: args.firstPin,
        ),
      );
    },
    RecoveryPasswordChoiseTypeRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.RecoveryPasswordChoiseTypeScreen(),
      );
    },
    RecoveryPasswordEnterInnRoute.name: (routeData) {
      final args = routeData.argsAs<RecoveryPasswordEnterInnRouteArgs>(
          orElse: () => const RecoveryPasswordEnterInnRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.RecoveryPasswordEnterInnScreen(
          key: args.key,
          isSmsRecovery: args.isSmsRecovery,
        ),
      );
    },
    RecoveryPasswordEnterNewPasswordRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RecoveryPasswordEnterNewPasswordScreen(),
      );
    },
    RecoveryPasswordEnterSmsCodeRoute.name: (routeData) {
      final args = routeData.argsAs<RecoveryPasswordEnterSmsCodeRouteArgs>(
          orElse: () => const RecoveryPasswordEnterSmsCodeRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.RecoveryPasswordEnterSmsCodeScreen(
          key: args.key,
          isSmsRecovery: args.isSmsRecovery,
        ),
      );
    },
    RecoveryPinCodeChoiseTypeRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.RecoveryPinCodeChoiseTypeScreen(),
      );
    },
    RecoveryPinCodeEnterEsiPasswordRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.RecoveryPinCodeEnterEsiPasswordScreen(),
      );
    },
    RecoveryPinCodeEnterSmsCodeRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.RecoveryPinCodeEnterSmsCodeScreen(),
      );
    },
    SelfiePreviewRoute.name: (routeData) {
      final args = routeData.argsAs<SelfiePreviewRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.SelfiePreviewScreen(
          args.path,
          args.onCheck,
          key: args.key,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthConfirmCodeScreen]
class AuthConfirmCodeRoute extends _i22.PageRouteInfo<void> {
  const AuthConfirmCodeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          AuthConfirmCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthConfirmCodeRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i22.PageRouteInfo<void> {
  const AuthRoute({List<_i22.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthSendConfirmScreen]
class AuthSendConfirmRoute extends _i22.PageRouteInfo<void> {
  const AuthSendConfirmRoute({List<_i22.PageRouteInfo>? children})
      : super(
          AuthSendConfirmRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthSendConfirmRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BottomNavigatorScreen]
class BottomNavigatorRoute extends _i22.PageRouteInfo<void> {
  const BottomNavigatorRoute({List<_i22.PageRouteInfo>? children})
      : super(
          BottomNavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CesSelfieScreen]
class CesSelfieRoute extends _i22.PageRouteInfo<void> {
  const CesSelfieRoute({List<_i22.PageRouteInfo>? children})
      : super(
          CesSelfieRoute.name,
          initialChildren: children,
        );

  static const String name = 'CesSelfieRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i6.EsiErrorScreen]
class EsiErrorRoute extends _i22.PageRouteInfo<void> {
  const EsiErrorRoute({List<_i22.PageRouteInfo>? children})
      : super(
          EsiErrorRoute.name,
          initialChildren: children,
        );

  static const String name = 'EsiErrorRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OEPCameraScreen]
class OEPCameraRoute extends _i22.PageRouteInfo<OEPCameraRouteArgs> {
  OEPCameraRoute({
    _i23.Key? key,
    required _i24.CameraDescription description,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          OEPCameraRoute.name,
          args: OEPCameraRouteArgs(
            key: key,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'OEPCameraRoute';

  static const _i22.PageInfo<OEPCameraRouteArgs> page =
      _i22.PageInfo<OEPCameraRouteArgs>(name);
}

class OEPCameraRouteArgs {
  const OEPCameraRouteArgs({
    this.key,
    required this.description,
  });

  final _i23.Key? key;

  final _i24.CameraDescription description;

  @override
  String toString() {
    return 'OEPCameraRouteArgs{key: $key, description: $description}';
  }
}

/// generated route for
/// [_i8.OEPFinishScreen]
class OEPFinishRoute extends _i22.PageRouteInfo<void> {
  const OEPFinishRoute({List<_i22.PageRouteInfo>? children})
      : super(
          OEPFinishRoute.name,
          initialChildren: children,
        );

  static const String name = 'OEPFinishRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OEPRegisterScreen]
class OEPRegisterRoute extends _i22.PageRouteInfo<void> {
  const OEPRegisterRoute({List<_i22.PageRouteInfo>? children})
      : super(
          OEPRegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'OEPRegisterRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PinCodeCreateScreen]
class PinCodeCreateRoute extends _i22.PageRouteInfo<PinCodeCreateRouteArgs> {
  PinCodeCreateRoute({
    _i23.Key? key,
    bool isNewPin = false,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          PinCodeCreateRoute.name,
          args: PinCodeCreateRouteArgs(
            key: key,
            isNewPin: isNewPin,
          ),
          initialChildren: children,
        );

  static const String name = 'PinCodeCreateRoute';

  static const _i22.PageInfo<PinCodeCreateRouteArgs> page =
      _i22.PageInfo<PinCodeCreateRouteArgs>(name);
}

class PinCodeCreateRouteArgs {
  const PinCodeCreateRouteArgs({
    this.key,
    this.isNewPin = false,
  });

  final _i23.Key? key;

  final bool isNewPin;

  @override
  String toString() {
    return 'PinCodeCreateRouteArgs{key: $key, isNewPin: $isNewPin}';
  }
}

/// generated route for
/// [_i11.PinCodeEnterScreen]
class PinCodeEnterRoute extends _i22.PageRouteInfo<void> {
  const PinCodeEnterRoute({List<_i22.PageRouteInfo>? children})
      : super(
          PinCodeEnterRoute.name,
          initialChildren: children,
        );

  static const String name = 'PinCodeEnterRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i12.PinCodeRepeatScreen]
class PinCodeRepeatRoute extends _i22.PageRouteInfo<PinCodeRepeatRouteArgs> {
  PinCodeRepeatRoute({
    _i23.Key? key,
    required String firstPin,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          PinCodeRepeatRoute.name,
          args: PinCodeRepeatRouteArgs(
            key: key,
            firstPin: firstPin,
          ),
          initialChildren: children,
        );

  static const String name = 'PinCodeRepeatRoute';

  static const _i22.PageInfo<PinCodeRepeatRouteArgs> page =
      _i22.PageInfo<PinCodeRepeatRouteArgs>(name);
}

class PinCodeRepeatRouteArgs {
  const PinCodeRepeatRouteArgs({
    this.key,
    required this.firstPin,
  });

  final _i23.Key? key;

  final String firstPin;

  @override
  String toString() {
    return 'PinCodeRepeatRouteArgs{key: $key, firstPin: $firstPin}';
  }
}

/// generated route for
/// [_i13.RecoveryPasswordChoiseTypeScreen]
class RecoveryPasswordChoiseTypeRoute extends _i22.PageRouteInfo<void> {
  const RecoveryPasswordChoiseTypeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          RecoveryPasswordChoiseTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoveryPasswordChoiseTypeRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RecoveryPasswordEnterInnScreen]
class RecoveryPasswordEnterInnRoute
    extends _i22.PageRouteInfo<RecoveryPasswordEnterInnRouteArgs> {
  RecoveryPasswordEnterInnRoute({
    _i23.Key? key,
    bool isSmsRecovery = false,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          RecoveryPasswordEnterInnRoute.name,
          args: RecoveryPasswordEnterInnRouteArgs(
            key: key,
            isSmsRecovery: isSmsRecovery,
          ),
          initialChildren: children,
        );

  static const String name = 'RecoveryPasswordEnterInnRoute';

  static const _i22.PageInfo<RecoveryPasswordEnterInnRouteArgs> page =
      _i22.PageInfo<RecoveryPasswordEnterInnRouteArgs>(name);
}

class RecoveryPasswordEnterInnRouteArgs {
  const RecoveryPasswordEnterInnRouteArgs({
    this.key,
    this.isSmsRecovery = false,
  });

  final _i23.Key? key;

  final bool isSmsRecovery;

  @override
  String toString() {
    return 'RecoveryPasswordEnterInnRouteArgs{key: $key, isSmsRecovery: $isSmsRecovery}';
  }
}

/// generated route for
/// [_i15.RecoveryPasswordEnterNewPasswordScreen]
class RecoveryPasswordEnterNewPasswordRoute extends _i22.PageRouteInfo<void> {
  const RecoveryPasswordEnterNewPasswordRoute(
      {List<_i22.PageRouteInfo>? children})
      : super(
          RecoveryPasswordEnterNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoveryPasswordEnterNewPasswordRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i16.RecoveryPasswordEnterSmsCodeScreen]
class RecoveryPasswordEnterSmsCodeRoute
    extends _i22.PageRouteInfo<RecoveryPasswordEnterSmsCodeRouteArgs> {
  RecoveryPasswordEnterSmsCodeRoute({
    _i23.Key? key,
    bool isSmsRecovery = false,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          RecoveryPasswordEnterSmsCodeRoute.name,
          args: RecoveryPasswordEnterSmsCodeRouteArgs(
            key: key,
            isSmsRecovery: isSmsRecovery,
          ),
          initialChildren: children,
        );

  static const String name = 'RecoveryPasswordEnterSmsCodeRoute';

  static const _i22.PageInfo<RecoveryPasswordEnterSmsCodeRouteArgs> page =
      _i22.PageInfo<RecoveryPasswordEnterSmsCodeRouteArgs>(name);
}

class RecoveryPasswordEnterSmsCodeRouteArgs {
  const RecoveryPasswordEnterSmsCodeRouteArgs({
    this.key,
    this.isSmsRecovery = false,
  });

  final _i23.Key? key;

  final bool isSmsRecovery;

  @override
  String toString() {
    return 'RecoveryPasswordEnterSmsCodeRouteArgs{key: $key, isSmsRecovery: $isSmsRecovery}';
  }
}

/// generated route for
/// [_i17.RecoveryPinCodeChoiseTypeScreen]
class RecoveryPinCodeChoiseTypeRoute extends _i22.PageRouteInfo<void> {
  const RecoveryPinCodeChoiseTypeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          RecoveryPinCodeChoiseTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoveryPinCodeChoiseTypeRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i18.RecoveryPinCodeEnterEsiPasswordScreen]
class RecoveryPinCodeEnterEsiPasswordRoute extends _i22.PageRouteInfo<void> {
  const RecoveryPinCodeEnterEsiPasswordRoute(
      {List<_i22.PageRouteInfo>? children})
      : super(
          RecoveryPinCodeEnterEsiPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoveryPinCodeEnterEsiPasswordRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i19.RecoveryPinCodeEnterSmsCodeScreen]
class RecoveryPinCodeEnterSmsCodeRoute extends _i22.PageRouteInfo<void> {
  const RecoveryPinCodeEnterSmsCodeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          RecoveryPinCodeEnterSmsCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoveryPinCodeEnterSmsCodeRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i20.SelfiePreviewScreen]
class SelfiePreviewRoute extends _i22.PageRouteInfo<SelfiePreviewRouteArgs> {
  SelfiePreviewRoute({
    required String? path,
    required Function onCheck,
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          SelfiePreviewRoute.name,
          args: SelfiePreviewRouteArgs(
            path: path,
            onCheck: onCheck,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelfiePreviewRoute';

  static const _i22.PageInfo<SelfiePreviewRouteArgs> page =
      _i22.PageInfo<SelfiePreviewRouteArgs>(name);
}

class SelfiePreviewRouteArgs {
  const SelfiePreviewRouteArgs({
    required this.path,
    required this.onCheck,
    this.key,
  });

  final String? path;

  final Function onCheck;

  final _i23.Key? key;

  @override
  String toString() {
    return 'SelfiePreviewRouteArgs{path: $path, onCheck: $onCheck, key: $key}';
  }
}

/// generated route for
/// [_i21.SplashScreen]
class SplashRoute extends _i22.PageRouteInfo<void> {
  const SplashRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}
