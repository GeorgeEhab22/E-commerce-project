import 'package:flutter/material.dart';
import 'favorites.dart';
import 'homepage.dart';
import 'myAccount.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Navigation> {
  @override
   List screens=[const HomePage(),const FavoriteProducts(),const MyAccount()];  
      int bottomNavigationBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: screens[bottomNavigationBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        
        onTap: (value) {
          setState(() {
            bottomNavigationBarIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: 'favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'account'),
        ],
        backgroundColor: Colors.white60,
        currentIndex: bottomNavigationBarIndex,
      ),
    );
  }
  
}