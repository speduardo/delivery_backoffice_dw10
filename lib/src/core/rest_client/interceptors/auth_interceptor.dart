import 'package:dio/dio.dart';

import '../../global/constants.dart';
import '../../global/global_context.dart';
import '../../storage/session_storage.dart';

class AuthInterceptor extends Interceptor {
  final SessisonStorage sessisonStorage;

  AuthInterceptor(this.sessisonStorage);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final accessToken =
        sessisonStorage.getDat(SessionStorageKeys.accessToken.key);
    options.headers['Authorization'] = 'Bearer $accessToken';
    handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      GlobalContext.instance.loginExpire();
    } else {
      handler.next(err);
    }
  }
}
