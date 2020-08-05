import 'package:mobx/mobx.dart';

part 'fidelity_controller.g.dart';

class FidelityController = _FidelityControllerBase with _$FidelityController;

abstract class _FidelityControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
