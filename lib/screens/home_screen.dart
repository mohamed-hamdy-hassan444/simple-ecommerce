import 'package:flutter/material.dart';
import 'package:simple_ecommerce/widgets/custom_ink_well.dart';

import 'package:simple_ecommerce/widgets/custom_bottom_nav_bar.dart';
import 'package:simple_ecommerce/widgets/categories_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      bottomNavigationBar: CustomButtomNavBar(
        currentIndex: currentIndex,
        onClick: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      prefixIconColor: Colors.grey[400],
                      hintText: "search",
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(Icons.menu_sharp, size: 30),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 100, child: CategoriesList()),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Best Selling",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 270,
              ),
              children: [
                CustomInkWell(
                  img: 'assets/images/headphone.jpg',
                  name: "Sonic N 542",
                  price: "300\$",
                ),
                CustomInkWell(
                  img: 'assets/images/watch.jpg',
                  name: 'Rolex T42',
                  price: '1000\$',
                ),
                CustomInkWell(
                  img: 'assets/images/headphone.jpg',
                  name: "Sonic N 542",
                  price: "300\$",
                ),
                CustomInkWell(
                  img: 'assets/images/watch.jpg',
                  name: 'Rolex T42',
                  price: '1000\$',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
