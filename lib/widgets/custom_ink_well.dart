import 'package:flutter/material.dart';
import 'package:simple_ecommerce/widgets/card_item.dart';
import 'package:simple_ecommerce/screens/item_details_screen.dart';

class CustomInkWell extends StatelessWidget {
  final String img;
  final String name;
  final String price;
  const CustomInkWell({
    super.key,
    required this.img,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                ItemDetailsScreen(img: img, name: name, price: price),
          ),
        );
      },
      child: CardItem(imgUrl: img, name: name, price: price),
    );
  }
}

