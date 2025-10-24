import 'package:flutter/material.dart';
import 'package:flutter_praktikum_3/material_page.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      home: const HomePage(),
    );
  }
}
