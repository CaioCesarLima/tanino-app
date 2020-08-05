import 'fidelity_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
//import 'package:dio/dio.dart';
import 'fidelity_page.dart';

class FidelityModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FidelityController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => FidelityPage()),
      ];

  static Inject get to => Inject<FidelityModule>.of();
}
