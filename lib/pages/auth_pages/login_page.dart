// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:job_seeker_app_flutter/services/auth/auth_service.dart';
import 'package:job_seeker_app_flutter/widgets/my_button.dart';
import 'package:job_seeker_app_flutter/widgets/my_text_field.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  void signIn() async {
    final authService = Provider.of<AuthService>(context, listen: false);


    try {
      await authService.signInWithEmailandPassword(
          emailController.text.trim(), passwordController.text.trim());
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
                  Text(
                    "Welcome back, Log In to continue...",
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 44,
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
                  MyButton(
                    text: "Log In",
                    onTap: signIn,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member? ",
                        style: GoogleFonts.openSans(fontSize: 18),
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          "Register",
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
