import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_seeker_app_flutter/services/auth/auth_gate.dart';
import 'package:job_seeker_app_flutter/widgets/my_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
              child: Image.asset("assets/images/job_seek1.jpg"),
            ),
            Text(
              "Find and land\n your next job",
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Text(
                  "Daily job postings at your fingertips - never miss out your next career move.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                  )),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthGate(),));
                },
                child: const MyButton(text: "Get Started"))
            ),
            
          ],
        ),
      ),
    );
  }
}
