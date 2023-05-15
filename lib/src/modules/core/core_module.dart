import 'package:flutter_modular/flutter_modular.dart';

import '../../core/rest_client/custom_dio.dart';
import '../../core/storage/session_storage.dart';
import '../../core/storage/session_storage_impl.dart';

class CoreModule extends Module {
  List<Bind> get binds => [
        Bind.lazySingleton<SessisonStorage>(
          (i) => SesisonStorageImpl(),
          export: true,
        ),
        Bind.lazySingleton(
          (i) => CustomDio(i()),
          export: true,
        ),
      ];
}
