import 'package:get/get.dart';
import 'package:registrationpage/Controllers/RegistrationController.dart';
import 'package:registrationpage/Controllers/logincontroller.dart';


class Loginbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Logincontroller>(() => Logincontroller());
  }
}
