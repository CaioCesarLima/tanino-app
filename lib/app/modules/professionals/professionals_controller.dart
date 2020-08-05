import 'package:mobx/mobx.dart';

part 'professionals_controller.g.dart';

class ProfessionalsController = _ProfessionalsControllerBase
    with _$ProfessionalsController;

abstract class _ProfessionalsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
