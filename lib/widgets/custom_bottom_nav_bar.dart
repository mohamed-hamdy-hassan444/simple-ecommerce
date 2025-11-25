import 'package:flutter/material.dart';

class CustomButtomNavBar extends StatelessWidget {
  final int currentIndex;
  void Function(int) onClick;
  CustomButtomNavBar({
    super.key,
    required this.currentIndex,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onClick,
      selectedItemColor: Colors.deepOrange,
      iconSize: 40,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: "Market",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
        ),
      ],
    );
  }
}
