import 'package:e_commerce/productCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int itemCount = 15; // Number of times to repeat the card

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: width * 0.75,
            height: height * 0.05,
            child: TextField(
              autofocus: false,
              style: const TextStyle(color: Colors.grey),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey, height: 0.8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (index == 0) ...[
                SizedBox(height: height * 0.02),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Image.asset(
                        'assets/images/image 51.png',
                        width: width,
                        height: height *
                            0.25, // Adjust the height for responsiveness
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: width * 0.05,
                      top: height * 0.04,
                      child: Container(
                        width: width * 0.7,
                        child: const Text(
                          'Recommended Product',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: width * 0.05,
                      bottom: height * 0.05,
                      child: Container(
                        width: width * 0.6,
                        child: const Text(
                          'We recommend the best for you',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
              ],
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: width * 0.02),
                        child: ProductCard().buildProductCard(),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: width * 0.02),
                        child: ProductCard().buildProductCard(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
