import 'package:register_ip/features/register_oep/domain/repositories/get_terms_repository.dart';

class GetTermsUseCase {
  final GetTermsRepo repo;
  GetTermsUseCase({
    required this.repo,
  });

  Future<String> getTerms() async {
    try {
      return await repo.getTerms();
    } catch (e) {
      rethrow;
    }
  }
}
