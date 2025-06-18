import 'package:get/get.dart';
import 'package:registrationpage/Controllers/RegistrationController.dart';


class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationController>(() => RegistrationController());
  }
}
