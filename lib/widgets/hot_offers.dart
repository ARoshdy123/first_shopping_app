import 'package:flutter/material.dart';

class HotOffers extends StatelessWidget {
  HotOffers({super.key});

  final List<Map<String, String>> offers = [
    {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqh8XYgMS2O_tFWX5CzmLeRvXRj7HCeTsAyg&s", "text": "Offer 1"},
    {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqh8XYgMS2O_tFWX5CzmLeRvXRj7HCeTsAyg&s", "text": "Offer 2"},
    {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqh8XYgMS2O_tFWX5CzmLeRvXRj7HCeTsAyg&s", "text": "Offer 3"},
    {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqh8XYgMS2O_tFWX5CzmLeRvXRj7HCeTsAyg&s", "text": "Offer 4"},
    {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqh8XYgMS2O_tFWX5CzmLeRvXRj7HCeTsAyg&s", "text": "Offer 5"},
  ];



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: offers.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(offers[index]['image']!, height: 50, width: 50),
            title: Text(offers[index]['text']!),
          );
        },
      ),
    );
  }
}
