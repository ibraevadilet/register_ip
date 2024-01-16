import 'package:dio/dio.dart';
import 'package:register_ip/features/register_oep/data/models/send_register_oep_model.dart';
import 'package:register_ip/features/register_oep/domain/repository/register_oep_repo.dart';
import 'package:register_ip/server/catch_exception.dart';

class RegisterOEPRepoImpl implements RegisterOEPRepo {
  RegisterOEPRepoImpl({required this.dio});
  final Dio dio;
  @override
  Future<void> registerOEP(SendRegisterOEPModel registerOEPModel) async {
    try {
      await dio.post(
        'oep-service/register/generate',
        data: registerOEPModel.toJson(),
      );
    } catch (e) {
      throw CatchException.convertException(e).message;
    }
  }
}
