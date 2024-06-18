import 'package:flutter/material.dart';
import 'package:my_app/small%20pages/build%20picture.dart';
import 'package:my_app/small%20pages/list%20pictures.dart';
import 'package:my_app/small%20pages/small%20slide.dart';

class Product1 extends StatefulWidget {
  const Product1({super.key});

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                  itemCount: Picture.length,
                  itemBuilder: (context, index) {
                    return BuildPicture(
                        net: Picture[index],
                        supply: Picture[index],
                        write: Picture[index],
                        pictures: Picture[index]);
                  },
                ),
                Positioned(
                  bottom: 430,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        Picture.length,
                        (index) => SmallSlide(
                            isActive: selectedIndex == index ? true : false),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
