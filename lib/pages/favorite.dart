import 'package:flutter/material.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/profile.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text%20style.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.blue,
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 85, vertical: 10),
                    child: Text(
                      'Favorites',
                      style: TextStyles.Montserrat.copyWith(
                          fontSize: 18, color: Colors.black),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(Images.CoffeeTable)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Stack(clipBehavior: Clip.none, children: [
                          Positioned(
                            right: -100,
                            child: Text.rich(TextSpan(
                                text: 'Coffee Table\n',
                                style: TextStyles.NunitoSans.copyWith(
                                    color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: '\$ 50.00',
                                      style: TextStyles.NunitoSans.copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                          fontSize: 18))
                                ])),
                          ),
                        ]),
                      ),
                      IconButton(
                        icon: Icon(Icons.dangerous_outlined),
                        onPressed: () {},
                        color: Colors.blue,
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Divider(color: AppColors.Grey1),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(Images.CoffeeChair)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Stack(clipBehavior: Clip.none, children: [
                          Positioned(
                            right: -100,
                            child: Text.rich(TextSpan(
                                text: 'Coffee Chair\n',
                                style: TextStyles.NunitoSans.copyWith(
                                    color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: '\$ 20.00',
                                      style: TextStyles.NunitoSans.copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                          fontSize: 18))
                                ])),
                          ),
                        ]),
                      ),
                      IconButton(
                        icon: Icon(Icons.dangerous_outlined),
                        onPressed: () {},
                        color: Colors.blue,
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Divider(color: AppColors.Grey1),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(Images.MinimalStand)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Stack(clipBehavior: Clip.none, children: [
                          Positioned(
                            right: -115,
                            child: Text.rich(TextSpan(
                                text: 'Minimal Stand\n',
                                style: TextStyles.NunitoSans.copyWith(
                                    color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: '\$ 25.00',
                                      style: TextStyles.NunitoSans.copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                          fontSize: 18))
                                ])),
                          ),
                        ]),
                      ),
                      IconButton(
                        icon: Icon(Icons.dangerous_outlined),
                        onPressed: () {},
                        color: Colors.blue,
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Divider(color: AppColors.Grey1),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(Images.SimpleDesk)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Stack(clipBehavior: Clip.none, children: [
                          Positioned(
                            right: -100,
                            child: Text.rich(TextSpan(
                                text: 'Simple Desk\n',
                                style: TextStyles.NunitoSans.copyWith(
                                    color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: '\$ 50.00',
                                      style: TextStyles.NunitoSans.copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                          fontSize: 18))
                                ])),
                          ),
                        ]),
                      ),
                      IconButton(
                        icon: Icon(Icons.dangerous_outlined),
                        onPressed: () {},
                        color: Colors.blue,
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Divider(color: AppColors.Grey1),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(Images.BlackSimpleLamp)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Stack(clipBehavior: Clip.none, children: [
                          Positioned(
                            right: -145,
                            child: Text.rich(TextSpan(
                                text: 'Black Simple Lamp\n',
                                style: TextStyles.NunitoSans.copyWith(
                                    color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: '\$ 12.00',
                                      style: TextStyles.NunitoSans.copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                          fontSize: 18))
                                ])),
                          ),
                        ]),
                      ),
                      IconButton(
                        icon: Icon(Icons.dangerous_outlined),
                        onPressed: () {},
                        color: Colors.blue,
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Divider(color: AppColors.Grey1),
              ),
            ],
          )),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  icon: Icon(
                    Icons.home,
                    color: Colors.black45,
                  ))),
          BottomNavigationBarItem(
              label: '',
              icon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark,
                    color: AppColors.Blue,
                  ))),
          BottomNavigationBarItem(
              label: '',
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  icon: Icon(
                    Icons.person,
                  ))),
        ],
      ),
    );
  }
}
