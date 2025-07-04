import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:registrationpage/Core/networks/DioClient.dart';
import 'package:registrationpage/Models/User.dart'; // For Get.snackbar

class RegistrationController extends GetxController {
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




void registrationUser(User user) {
  String requestBody = jsonEncode(user.toJson());
  print("Request Body: $requestBody");

  var post = DioClient().getInstance().post('/register', data: requestBody);

  post.then((response) {
    if (response.statusCode == 200) {
      print("Registration successful: ${response.data}");
      Get.snackbar("Success", "Registration successful");
    } else {
      print("Registration failed: ${response.data}");
      Get.snackbar("Error", "Registration failed");
    }
  }).catchError((error) {
    print("Error occurred: $error");
    Get.snackbar("Error", "An error occurred during registration");
  });
}



}
