import 'package:flutter_modular/flutter_modular.dart';

import '../template/base_layout.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const BaseLayout(
            body: RouterOutlet(),
          ),
          children: [
            ChildRoute('/home', child: (context, args) => const HomePage()),
          ],
        ),
      ];
}
