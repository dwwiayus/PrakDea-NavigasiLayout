import 'package:flutter/material.dart';
import 'package:layout_navigasi/models/item.dart'; 

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
    name: 'Black Denim Fit OneSet',
     price: 500000,
     imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgqOJ206NJsIKt0PJtWzqBGELX9Bzg7O8AtQ&s',
     stock: 4,
     rating: 4.1,
     ),

       Item(
    name: 'White Denim Fit OneSet',
     price: 450000,
     imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlKb3FDbu9kaUpmK7_8Nat78B6SRHicEbgGA&s',
     stock: 2 ,
     rating: 4.9,),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Barang'), 
        ),

         body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            childAspectRatio: 0.7, 
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Hero(
                tag: item.name, // Tag yang unik untuk animasi Hero
                child: Card(
                  child: Column(
                    children: [
                      Expanded( // Menggunakan Expanded agar gambar mengambil ruang yang tepat
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0), // Memberikan padding
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 4), 
                            Text('Rp ${item.price}', style: TextStyle(color: const Color.fromARGB(255, 255, 1, 1))),
                            SizedBox(height: 4), 
                            Text('Stock: ${item.stock}'),
                            SizedBox(height: 4),
                            Text('Rating: ${item.rating}', style: TextStyle(color: const Color.fromARGB(255, 255, 230, 0))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(16),
          child: Text('Dea Cipta - 362358302147'),
        ),
    );
  }
}