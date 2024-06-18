import 'package:flutter/material.dart';
import 'package:my_app/pages/favorite.dart';
import 'package:my_app/pages/profile.dart';
import 'package:my_app/small%20pages/chair.dart';
import 'package:my_app/small%20pages/lamp.dart';
import 'package:my_app/small%20pages/popular.dart';
import 'package:my_app/small%20pages/search%20delegate.dart';
import 'package:my_app/small%20pages/table.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text%20style.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                },
                icon: Image.asset(Images.Search)),
            title: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'Find All You Need',
                style: TextStyles.Montserrat.copyWith(color: Colors.black),
              ),
            ),
            bottom: TabBar(
                indicatorPadding: EdgeInsets.only(bottom: 27),
                dividerColor: Colors.white10,
                labelColor: AppColors.Blue,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicator: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                labelStyle: TextStyles.NunitoSans,
                tabs: [
                  Tab(
                    icon: Image.asset(Images.Star),
                    text: ' Popular ',
                  ),
                  Tab(
                    icon: Image.asset(Images.Chair),
                    text: '   Chair   ',
                  ),
                  Tab(
                    icon: Image.asset(Images.Table),
                    text: '   Table   ',
                  ),
                  Tab(
                    icon: Image.asset(Images.Armchair),
                    text: 'Armchair',
                  ),
                  Tab(
                    icon: Image.asset(Images.Bed),
                    text: '    Bed    ',
                  ),
                  Tab(
                    icon: Image.asset(Images.Lamp, color: Colors.grey),
                    text: '   Lamp   ',
                  ),
                ])),
        body: TabBarView(children: [
          Popular(),
          Popular(),
          Popular(),
          Popular(),
          Popular(),
          Popular(),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home, color: AppColors.Blue))),
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    icon: Icon(Icons.person))),
          ],
        ),
      ),
    );
  }
}
