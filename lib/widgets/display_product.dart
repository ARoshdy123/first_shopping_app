import 'package:flutter/material.dart';

class DisplayProducts extends StatelessWidget {
  DisplayProducts({super.key});

  final List<String> productImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqh8XYgMS2O_tFWX5CzmLeRvXRj7HCeTsAyg&s'
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqh8XYgMS2O_tFWX5CzmLeRvXRj7HCeTsAyg&s'
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqh8XYgMS2O_tFWX5CzmLeRvXRj7HCeTsAyg&s'
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: productImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.network(productImages[index]),
          );
        },
      ),
    );
  }
}
