import 'professionals_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'professionals_page.dart';

class ProfessionalsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProfessionalsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ProfessionalsPage()),
      ];

  static Inject get to => Inject<ProfessionalsModule>.of();
}
