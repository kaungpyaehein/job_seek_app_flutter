import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/auth/auth_service.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Future<void> signOut() async {
    final authService = Provider.of<AuthService>(context, listen: false);
    authService.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions:  [
          IconButton(onPressed: signOut, icon: const Icon(Icons.logout))

        ],
      ),
    );
  }
}