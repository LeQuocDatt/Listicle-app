import 'package:flutter/material.dart';
import 'package:my_app/pages/favorite.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/profile.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text%20style.dart';

class MyListingsPage extends StatefulWidget {
  const MyListingsPage({super.key});

  @override
  State<MyListingsPage> createState() => _MyListingsPageState();
}

class _MyListingsPageState extends State<MyListingsPage> {
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.blue,
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 20),
                    child: Text(
                      'My Listings',
                      style:
                          TextStyles.Montserrat.copyWith(color: Colors.black),
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
                        icon: Icon(Icons.restore_from_trash_outlined),
                        onPressed: () {},
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
                        icon: Icon(Icons.restore_from_trash_outlined),
                        onPressed: () {},
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
                        icon: Icon(Icons.restore_from_trash_outlined),
                        onPressed: () {},
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoritePage()));
                  },
                  icon: Icon(Icons.bookmark))),
          BottomNavigationBarItem(
              label: '',
              icon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: AppColors.Blue,
                  ))),
        ],
      ),
    );
  }
}
