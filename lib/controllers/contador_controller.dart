import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ContadorController extends GetxController {
  int valor = 0;

  void incrementar() {
    this.valor++;
    update();
  }

  void decrementar() {
    this.valor--;
    update();
  }
}
