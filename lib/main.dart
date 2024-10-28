import 'package:flutter/material.dart';
import 'package:responsi_flutter/pages/account_page.dart';
import 'package:responsi_flutter/pages/auth/forgot_password_page.dart';
import 'package:responsi_flutter/pages/auth/login_page.dart';
import 'package:responsi_flutter/pages/auth/register_page.dart';
import 'package:responsi_flutter/pages/auth/reset_password_page.dart';
import 'package:responsi_flutter/pages/home_page.dart';
import 'package:responsi_flutter/pages/splash_page.dart';
import 'package:responsi_flutter/pages/auth/verify_code_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RESPONSI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/register': (context) => const RegisterPage(),
        '/login': (context) => const LoginPage(),
        '/forgot-password': (context) => const ForgotPasswordPage(),
        '/verify-code': (context) => const VerifyCodePage(),
        '/reset-password': (context) => const ResetPasswordPage(),
        '/home': (context) => const HomePage(),
        '/account': (context) => AccountPage(),
      },
    );
  }
}
