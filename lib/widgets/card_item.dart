import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String price;

  const CardItem({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            height: 170,
            width: 300,
            child: Image.asset(imgUrl, fit: BoxFit.contain),
          ),

          Text(name, style: TextStyle(fontSize: 20)),
          Text(
            "Description ",
            style: TextStyle(fontSize: 15, color: Colors.grey[500]),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
