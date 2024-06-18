import 'package:flutter/material.dart';
import 'package:my_app/small%20pages/list%20pictures.dart';
import 'package:my_app/small%20pages/small%20product.dart';

class Popular extends StatelessWidget {
  const Popular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: GridView.builder(
        itemCount: Picture.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 280,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return SmallProduct(
              net: Picture[index],
              pictures: Picture[index],
              supply: Picture[index]);
        },
      ),
    );
  }
}
