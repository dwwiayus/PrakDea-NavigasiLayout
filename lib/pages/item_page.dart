import 'package:flutter/material.dart';
import 'package:layout_navigasi/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)?.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: item.name,
                  child: Image.network(item.imageUrl), // Gambar item
                ),
                Text('Harga: Rp ${item.price}'),
                Text('Stok: ${item.stock}'),
                Text('Rating: ${item.rating}'),
              ],
            ),
            ),
        );
    }
}