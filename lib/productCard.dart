import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard{
   Widget buildProductCard() {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Image.asset(
            'assets/images/image Product.png',
            width: 90,
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: SizedBox(
              width: 100,
              child: Text(
                'Nike Air Max 270 React ENG',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 100,
            child: Text(
              'rating :',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 5),
          const SizedBox(
            width: 100,
            child: Text(
              'price :',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}