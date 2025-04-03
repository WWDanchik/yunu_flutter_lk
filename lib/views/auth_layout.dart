import 'package:flutter/material.dart';
import 'package:yunu_lk_flutter/views/widgets/yunu_logo.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  const AuthLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 104.0, 24.0, 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const YunuLogo(width: 50, height: 50),
              const SizedBox(height: 50),
              child
            ],
          ),
        ),
      ),
    ));
  }
}
