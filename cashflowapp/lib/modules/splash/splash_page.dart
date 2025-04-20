import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../login/widgets/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  double _opacity = 1.0;

  @override
  void initState() {
    super.initState();

    // Começa o fade após 2.5 segundos
    Future.delayed(const Duration(milliseconds: 2500), () {
      setState(() {
        _opacity = 0.0;
      });
    });

    // Troca de tela após 5 segundos
    Future.delayed(const Duration(milliseconds: 5000), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3A86FF),
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(milliseconds: 800),
          child: Text(
            'CashFlow',
            style: GoogleFonts.manrope(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
