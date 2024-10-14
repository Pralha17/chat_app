import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SubAdminScreen extends StatelessWidget {
  const SubAdminScreen({super.key});

  void _signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacementNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub-Admin Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => _signOut(context),
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome, Sub-Admin!'),
      ),
    );
  }
}
