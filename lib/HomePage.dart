import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/getProducts_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: BlocBuilder<GetProductsCubit, GetProductsState>(
        builder: (context, state) {
          if (state is GetProductsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GetProductsSuccess) {
            return ListView.builder(
              itemCount: (state.productsList.length / 2).ceil(),
              itemBuilder: (context, index) {
                final firstProduct = state.productsList[index * 2];
                final secondProduct = index * 2 + 1 < state.productsList.length
                    ? state.productsList[index * 2 + 1]
                    : null;

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
                              child: Card(
                                elevation: 5,
                                child: Column(
                                  children: [
                                    const SizedBox(height: 10),
                                    Image.network(
                                      firstProduct.thumbnail,
                                      width: 90,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(15),
                                      child: SizedBox(
                                        width: 100,
                                        child: Text(
                                          firstProduct.title,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        "rating : ${firstProduct.rating}",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        "price : ${firstProduct.price.toString()}",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          if (secondProduct != null)
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: width * 0.02),
                                child: Card(
                                  elevation: 5,
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      Image.network(
                                        secondProduct.thumbnail,
                                        width: 90,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(15),
                                        child: SizedBox(
                                          width: 100,
                                          child: Text(
                                            secondProduct.title,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        child: Text(
                                          "rating : ${secondProduct.rating}",
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      SizedBox(
                                        width: 100,
                                        child: Text(
                                          "price : ${secondProduct.price.toString()}",
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          } else if (state is GetProductsFailure) {
            return Center(
              child: Text(
                'Failed to load products: ${state.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else {
            return const Center(child: Text("No data available"));
          }
        },
      ),
    );
  }
}
