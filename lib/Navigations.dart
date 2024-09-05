<<<<<<< HEAD
import 'package:e_commerce/screens/HomePage.dart';
import 'package:e_commerce/screens/favorite_screen.dart';
import 'package:e_commerce/screens/search_view.dart';
import 'package:e_commerce/widgets/custom_naviagation_bar.dart';
import 'package:flutter/material.dart';
import 'screens/myAccount.dart';
=======
import 'package:flutter/material.dart';
import 'favorites.dart';
import 'homepage.dart';
import 'myAccount.dart';
>>>>>>> e763aa1457bfd7182f6d678d543f79ef13ce4d16

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Navigation> {
<<<<<<< HEAD
  int currentIndex = 0;
  List screens = [
    const HomePage(),
    const SearchView(),
    const FavoriteScreen(),
    const MyAccount(),
  ];
  int bottomNavigationBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[currentIndex],
      bottomNavigationBar: CusotmBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
=======
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
>>>>>>> e763aa1457bfd7182f6d678d543f79ef13ce4d16
