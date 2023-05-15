import '../../core/global/constants.dart';
import '../../core/storage/session_storage.dart';
import '../../repositories/auth/auth_repository.dart';
import 'login_service.dart';

class LoginServiceImpl implements LoginService {
  final AuthRepository _authRepository;
  final SessisonStorage _sessionStorage;

  LoginServiceImpl(this._authRepository, this._sessionStorage);

  @override
  Future<void> execute(String email, String password) async {
    final authModel = await _authRepository.login(email, password);
    _sessionStorage.setData(
      SessionStorageKeys.accessToken.key,
      authModel.accessToken,
    );
  }
}
