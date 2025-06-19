import 'package:get/get.dart';
import 'package:registrationpage/Bindings/RegistrationBinding.dart';
import 'package:registrationpage/Bindings/loginbinding.dart';
import 'package:registrationpage/Routes/AppRoute.dart';
import 'package:registrationpage/Views/Registration.dart';
import 'package:registrationpage/Views/login.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: Approute.register,
      page: () => Registration(),
      binding: RegistrationBinding(),
    ),
      GetPage(
      name: Approute.login,
      page: () => Login(),
      binding: Loginbinding(),
    ),

  ];
}
