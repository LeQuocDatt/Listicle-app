import 'package:flutter/material.dart';
import 'package:my_app/pages/product1.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text%20style.dart';

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 260,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Product1(),
                      ));
                },
                child: Image.asset(Images.SimpleDesk)),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text.rich(TextSpan(
                  text: 'Simple Desk\n',
                  style: TextStyles.NunitoSans.copyWith(
                      fontWeight: FontWeight.w400, color: Colors.black),
                  children: [
                    TextSpan(
                        text: '\$ 50.00',
                        style: TextStyles.NunitoSans.copyWith(
                            fontWeight: FontWeight.w900, color: Colors.black))
                  ])),
            )
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Product1(),
                      ));
                },
                child: Image.asset(Images.MinimalStand)),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text.rich(TextSpan(
                  text: 'Minimal Stand\n',
                  style: TextStyles.NunitoSans.copyWith(
                      fontWeight: FontWeight.w400, color: Colors.black),
                  children: [
                    TextSpan(
                        text: '\$ 25.00',
                        style: TextStyles.NunitoSans.copyWith(
                            fontWeight: FontWeight.w900, color: Colors.black))
                  ])),
            )
          ]),
        ],
      ),
    );
  }
}
