import 'package:flutter/material.dart';
import 'package:mobile_m1/model/cart_model.dart';
import 'package:provider/provider.dart';
import '../../components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //untuk memastikan desain tidak bertumpuk
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // posisi elemen pada column menjadi horizontal
          children: [
            const SizedBox(height: 48), // tinggi size box

            // good morning
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good Morning"),
            ),

            const SizedBox(height: 4),

            // lets order fresh item
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "lets order fresh items",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // divider : memisahkan judul dengan daftar barang
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),
            ),

            const SizedBox(height: 24),

            //fresh items + grids
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "fresh items",
                style: TextStyle(fontSize: 16),
              ),
            ),

            Expanded(
              // mengisi ruang yg ada
              child: Consumer<CartModel>(
                // untuk mengambil data yg ada pada cart model untuk mengikuti perubahan pada cartmodel
                builder: (context, value, child) {
                  // membangun tampilan widget
                  return GridView.builder(
                    // menampilkan daftar barang dalam bentuk grid
                    itemCount: value.shopItems
                        .length, // menentukan jumlah item dalam grid yg diambil dari shopitem di cartmodel
                    padding: EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      // mengatur tampilan grid dan jumlah kolom
                      crossAxisCount: 2, // jumlah kolom 2 rasio
                      childAspectRatio: 1 / 1.3,
                    ),
                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
