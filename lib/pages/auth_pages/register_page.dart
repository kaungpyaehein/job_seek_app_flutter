import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_seeker_app_flutter/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

import '../../widgets/my_button.dart';
import '../../widgets/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  void signUp() async {
    if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Passwords do not match")));
      return;
    }
    final authService = Provider.of<AuthService>(context, listen: false);
    try {
      await authService.signUpWithEmailandPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/login_photo.jpg",
                    height: 300,
                  ),
                  // Text(
                  //   "Welcome back, Log In to continue...",
                  //   style: GoogleFonts.openSans(
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                      controller: emailController,
                      hintText: "Email",
                      obscureText: false),
                  const SizedBox(
                    height: 15,
                  ),
                  MyTextField(
                      controller: passwordController,
                      hintText: "Password",
                      obscureText: true),
                  const SizedBox(
                    height: 15,
                  ),
                  MyTextField(
                      controller: confirmPasswordController,
                      hintText: "Confirm Password",
                      obscureText: true),
                  const SizedBox(
                    height: 15,
                  ),
                   MyButton(
                    onTap: signUp,
                    text: "Sign Up",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already a member? ",
                        style: GoogleFonts.openSans(fontSize: 18),
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          "Log In",
                          style: GoogleFonts.openSans(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
