import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Logincontroller extends GetxController {
  // Define all the TextEditingControllers you use in your Registration page
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final countryController = TextEditingController();
  final passwordController = TextEditingController();

  void registerUser() {
    // Example register logic - replace with your own
    print('Name: ${nameController.text}');
    print('Email: ${emailController.text}');
    print('Phone: ${phoneController.text}');
    print('Country: ${countryController.text}');
    print('Password: ${passwordController.text}');
  }

  @override
  void onClose() {
    // Dispose controllers to free resources
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    countryController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
