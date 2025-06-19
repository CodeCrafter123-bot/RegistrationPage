import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Controllers/logincontroller.dart';
import 'package:registrationpage/Routes/AppRoute.dart';
import 'package:registrationpage/Views/Registration.dart';


class Login extends GetView<Logincontroller> {
  const Login({super.key}); // Add constructor if missing

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Login Page")),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           

            const Text("Email:"),
            const SizedBox(height: 6),
            TextField(
              controller: controller.emailController,
              decoration: _inputDecoration(Icons.email, "Email Address"),
            ),
            const SizedBox(height: 16),

            

          

            const Text("Password:"),
            const SizedBox(height: 6),
            TextField(
              controller: controller.passwordController,
              obscureText: true,
              decoration: _inputDecoration(Icons.lock, "Password"),
            ),
            const SizedBox(height: 24),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  controller.registerUser();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.deepPurple,
                ),
                child: const Text("Login", style: TextStyle(color: Colors.white)),
              ),
            ),
          SizedBox(
  height: 50,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Don't have an account?",
        style: TextStyle(fontSize: 16),
      ),
      const SizedBox(width: 5),
      TextButton(
        onPressed: () {
          Get.toNamed(Approute.register);
        },
        child: const Text(
          "Register",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    ],
  ),
)



          ],
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(IconData icon, String label) {
    return InputDecoration(
      prefixIcon: Icon(icon),
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
