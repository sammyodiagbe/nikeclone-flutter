import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:nikeclone/screens/favourite.dart";
import "package:nikeclone/screens/home.dart";
import "package:nikeclone/screens/profile.dart";
import "package:nikeclone/screens/shopScreen.dart";

void main() {
  runApp(NikeClone());
}

class NikeClone extends StatefulWidget {
  const NikeClone({super.key});

  @override
  State<NikeClone> createState() => _NikeCloneState();
}

class _NikeCloneState extends State<NikeClone> {
  int _selectedIndex = 1;

  final screens = [
    Home(),
    ShopScreen(),
    FavouriteScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];

  void _updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _updateIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop_2_outlined,
                ),
                label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_rounded,
                ),
                label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: 'Bag'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: 'Profile'),
          ],
        ),
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
          ),
          unselectedItemColor: Colors.grey.shade500,
          selectedItemColor: Colors.black,
          elevation: 0,
        ),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.dmSans(
            fontSize: 32,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
