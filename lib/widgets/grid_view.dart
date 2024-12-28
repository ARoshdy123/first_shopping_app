import 'package:flutter/material.dart';

class GridViewProduct extends StatelessWidget {
  GridViewProduct({super.key});

  final List<Map<String, String>> products = [
    {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAfA1vK6k1qc0bEtvGj1wQ8z_rQyZzGRznQQ&s", "name": "Product 1"},
    {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAfA1vK6k1qc0bEtvGj1wQ8z_rQyZzGRznQQ&s", "name": "Product 2"},
    {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAfA1vK6k1qc0bEtvGj1wQ8z_rQyZzGRznQQ&s", "name": "Product 3"},
    {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAfA1vK6k1qc0bEtvGj1wQ8z_rQyZzGRznQQ&s", "name": "Product 4"},
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: [
              Image.network(products[index]['image']!, height: 100, width: 100),
              const SizedBox(height: 10),
              Text(products[index]['name']!),
              IconButton(
                icon: const Icon(Icons.add_shopping_cart),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${products[index]['name']} added to cart')),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
