import 'package:flutter/material.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/small%20pages/list%20pictures.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/text%20style.dart';

class BuildPicture extends StatelessWidget {
  final Pictures pictures;
  final Pictures supply;
  final Pictures net;
  final Pictures write;
  const BuildPicture({
    super.key,
    required this.pictures,
    required this.supply,
    required this.net,
    required this.write,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(pictures.image), fit: BoxFit.fill),
            ),
            child: SafeArea(
              child: Stack(children: [
                Positioned(
                  top: 10,
                  left: 20,
                  child: FloatingActionButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 0,
                      backgroundColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.Blue,
                      )),
                ),
              ]),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(
                      text: supply.item,
                      style: TextStyles.Gelasio,
                      children: [
                        TextSpan(
                            text: net.price,
                            style: TextStyles.NunitoSans.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
                                color: Colors.black)),
                        TextSpan(
                            text: write.content,
                            style: TextStyles.NunitoSans.copyWith(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey))
                      ])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark,
                              color: AppColors.Blue,
                            )),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStatePropertyAll(10),
                              backgroundColor:
                                  MaterialStatePropertyAll(AppColors.Blue),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8))))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 15),
                            child: Text(
                              'Contact Seller',
                              style: TextStyles.NunitoSans.copyWith(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ))
                    ],
                  )
                ]),
          ),
        )
      ],
    );
  }
}
