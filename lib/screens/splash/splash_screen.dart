import 'package:flutter/material.dart';
import 'package:facebookk/screens/auth/login/login%20screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 294),
              child: Image.asset(
                'assets/images/logo_facebook.png',
                width: 100,
                height: 100,
              ),
            ),
            const Spacer(),
            Image.asset('assets/images/meta.png', width: 100, height: 100),
          ],
        ),
      ),
    );
  }
}
