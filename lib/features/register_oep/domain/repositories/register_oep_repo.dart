import 'package:register_ip/features/register_oep/data/models/send_register_oep_model.dart';

abstract class RegisterOEPRepo {
  Future<void> registerOEP(SendRegisterOEPModel registerOEPModel);
}
