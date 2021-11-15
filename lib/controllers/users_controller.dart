import 'package:contador/models/User.dart';
import 'package:contador/services/UserService.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class UsersController extends GetxController {
  List<User> users = [];
  bool loading = true;

  Future<void> loadUsers() async {
    print('entre');
    final data = await UserService.instance.getUsers(1);
    this.users = data!;
    this.loading = false;
    update();
  }

  @override
  void onInit() {
    this.loadUsers();
    super.onInit();
  }
}
