import 'package:flutter/material.dart';

class favoriteProducts extends StatelessWidget {
  const favoriteProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Favorite",style: TextStyle(fontSize: 60,color: Colors.red),)),
    );
  }
}