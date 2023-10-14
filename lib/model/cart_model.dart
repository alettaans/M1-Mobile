import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {

  // list of item on sale
  final List _shopItems = [
    // [ itemName, itemPrice, itemPath, color ]
    ["Banana", "4.00", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "6.00", "lib/images/chicken.png", Colors.brown],
    ["Water", "1.80", "lib/images/water.png", Colors.blue],
    ["Banana", "4.00", "lib/images/banana.png", Colors.yellow],
  ];

  get shopItems => _shopItems; // untuk memberikan akses ke properti atau variabel privat _shopItems dari luar kelas CartModel
}