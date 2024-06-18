import 'package:flutter/material.dart';
import 'package:my_app/pages/product1.dart';
import 'package:my_app/small%20pages/list%20pictures.dart';
import 'package:my_app/values/text%20style.dart';

class SmallProduct extends StatelessWidget {
  final Pictures pictures;
  final Pictures supply;
  final Pictures net;
  const SmallProduct({
    super.key,
    required this.pictures,
    required this.supply,
    required this.net,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
        flex: 3,
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Product1(),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(pictures.image), fit: BoxFit.fill)),
            )),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text.rich(TextSpan(
              text: supply.item,
              style: TextStyles.NunitoSans.copyWith(
                  fontWeight: FontWeight.w400, color: Colors.black),
              children: [
                TextSpan(
                    text: net.price,
                    style: TextStyles.NunitoSans.copyWith(
                        fontWeight: FontWeight.w900, color: Colors.black))
              ])),
        ),
      )
    ]);
  }
}
