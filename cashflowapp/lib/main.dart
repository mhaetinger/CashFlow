import 'package:flutter/material.dart';
import 'modules/splash/splash_page.dart'; // importa a sua tela splash

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CashFlow',
      debugShowCheckedModeBanner: false, // remove a faixa de debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3A86FF)),
        useMaterial3: true,
      ),
      home: const SplashPage(), // tela inicial agora é a splash
    );
  }
}
