import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( // menampung elemen
        children: [
          //logo
          Padding( // memberi jarak
            padding: const EdgeInsets.only(
              left: 80.0, right: 80, bottom: 40, top: 160),
            child: Image.asset('lib/images/avocado.png'),
          ),

          // we deliver groceries
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              "We Deliver Groceries",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Fresh Items Everyday
          Text(
            "Fresh Item Everyday",
            style: TextStyle(color: Colors.grey[600]),
          ),

          const SizedBox(height: 24), // jarak sebanyak 24 px

          // get started button
          GestureDetector( // interaksi tombol
            onTap: () {
              // Navigasi ke halaman beranda
              Navigator.push( // mengarahkan ke homepage
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
