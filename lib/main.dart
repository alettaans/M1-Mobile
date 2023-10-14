import 'package:flutter/material.dart';
import 'package:mobile_m1/model/cart_model.dart';
import 'package:provider/provider.dart';
import 'view/pages/intro_page.dart';

void main() {
  runApp(const MyApp()); // untuk menjalankan aplikasinya
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
