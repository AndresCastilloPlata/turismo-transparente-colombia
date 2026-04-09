import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: TurismoTransparenteApp()));
}

class TurismoTransparenteApp extends StatelessWidget {
  const TurismoTransparenteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turismo Transparente Colombia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),

      home: Scaffold(
        body: const Center(child: Text('Arquitectura Base Configurada')),
      ),
    );
  }
}
