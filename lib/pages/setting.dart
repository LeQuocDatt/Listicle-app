import 'package:flutter/material.dart';
import 'package:my_app/pages/favorite.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/profile.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/text%20style.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 30),
                  child: Text(
                    'Settings',
                    style: TextStyles.Montserrat.copyWith(color: Colors.black),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Personal Information',
                    style: TextStyles.NunitoSans.copyWith(
                        color: Colors.grey, fontSize: 16)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.grey,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(offset: Offset(3, 3), color: Colors.grey)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: 'Name\n',
                            style: TextStyles.NunitoSans.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                            children: [
                              TextSpan(
                                  text: 'Bruno Pham',
                                  style: TextStyles.NunitoSans)
                            ])),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(offset: Offset(3, 3), color: Colors.grey)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: 'Email\n',
                            style: TextStyles.NunitoSans.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                            children: [
                              TextSpan(
                                  text: 'bruno203@gmail.com',
                                  style: TextStyles.NunitoSans)
                            ])),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text('Help Center',
                  style: TextStyles.NunitoSans.copyWith(
                      color: Colors.grey, fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(offset: Offset(3, 3), color: Colors.grey)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('FAQ',
                              style: TextStyles.NunitoSans.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w900)),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                          )
                        ]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(offset: Offset(3, 3), color: Colors.grey)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Contact Us',
                              style: TextStyles.NunitoSans.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w900)),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                          )
                        ]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(offset: Offset(3, 3), color: Colors.grey)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Privacy & Term',
                              style: TextStyles.NunitoSans.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w900)),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                          )
                        ]),
                  ),
                ),
              ),
            ),
          ],
        )),
      )),
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
