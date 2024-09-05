import 'package:flutter/material.dart';
class FavoriteProducts extends StatelessWidget {
  const FavoriteProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "Favorite",
        style: TextStyle(fontSize: 60, color: Colors.red),
      )),
    );
  }
}
