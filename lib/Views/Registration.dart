import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Controllers/RegistrationController.dart';

class Registration extends GetView<RegistrationController> {
  const Registration({super.key}); // Add constructor if missing

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Registration Page")),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Name:"),
            const SizedBox(height: 6),
            TextField(
              controller: controller.nameController,
              decoration: _inputDecoration(Icons.person, "Full Name"),
            ),
            const SizedBox(height: 16),

            const Text("Email:"),
            const SizedBox(height: 6),
            TextField(
              controller: controller.emailController,
              decoration: _inputDecoration(Icons.email, "Email Address"),
            ),
            const SizedBox(height: 16),

            const Text("Phone Number:"),
            const SizedBox(height: 6),
            TextField(
              controller: controller.phoneController,
              keyboardType: TextInputType.phone,
              decoration: _inputDecoration(Icons.phone, "Phone Number"),
            ),
            const SizedBox(height: 16),

            const Text("Country:"),
            const SizedBox(height: 6),
            TextField(
              controller: controller.countryController,
              decoration: _inputDecoration(Icons.flag, "Country"),
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
                child: const Text("Register", style: TextStyle(color: Colors.white)),
              ),
            ),
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
