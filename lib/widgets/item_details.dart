import 'package:flutter/material.dart';
import 'package:simple_ecommerce/widgets/custom_bottom_nav_bar.dart';

class ItemDetails extends StatefulWidget {
  final String img;
  final String name;
  final String? type;
  final String price;

  const ItemDetails({
    super.key,
    required this.img,
    required this.name,
     this.type,
    required this.price,
  });

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    int currentindex = 0;
    return Scaffold(
      bottomNavigationBar: CustomButtomNavBar(
        currentIndex: currentindex,
        onClick: (value) {
          setState(() {
            currentindex = value;
          });
        },
      ),
      endDrawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop_outlined, color: Colors.black),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Ecommerce ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Weal",
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.grey[500]),
        elevation: 0,
        backgroundColor: Colors.grey[200],
      ),
      body: ListView(
        children: [
          Container(
            width: 300,
            height: 300,
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.only(bottom: 20),
            child: Image.asset(widget.img),
          ),
          Text(
            widget.type??"item",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              widget.name,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.grey[500]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              widget.price,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Colors : ",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(50),
                ),
              ),

              Text("grey"),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Text("black"),
            ],
          ),
          SizedBox(height: 20),

          Text(
            "Size :     34  35  40  42",
            style: TextStyle(fontSize: 20, color: Colors.grey[500]),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 80),
            child: MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 20),
              onPressed: () {},
              color: Colors.black,
              textColor: Colors.white,
              child: Text("Add To Cart"),
            ),
          ),
        ],
      ),
    );
  }
}

  // BottomNavigationBar(
  //       currentIndex: currentindex,
  //       onTap: (value) {
  //         setState(() {
  //           currentindex = value;
  //         });
  //       },
  //       selectedItemColor: Colors.deepOrange,
  //       iconSize: 40,
  //       items: [
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.home_outlined),
  //           label: "Home",
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.shopping_bag_outlined),
  //           label: "Market",
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.person_outline),
  //           label: "Profile",
  //         ),
  //       ],
  //     ),