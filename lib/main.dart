import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:job_seeker_app_flutter/firebase_options.dart';
import 'package:job_seeker_app_flutter/services/auth/auth_gate.dart';
import 'package:job_seeker_app_flutter/services/auth/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/auth_pages/welcome_page.dart';

int initScreen = 0;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt("initScreen") ?? 0; // Use null-aware operator to handle null case
  await preferences.setInt("initScreen", 1);

  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: initScreen == 0  ? const WelcomePage() : const AuthGate(),
    );
  }
}
