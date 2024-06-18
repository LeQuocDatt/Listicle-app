import 'package:flutter/material.dart';
import 'package:my_app/pages/create%20a%20new%20listing.dart';
import 'package:my_app/pages/favorite.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/my%20listings.dart';
import 'package:my_app/pages/setting.dart';
import 'package:my_app/pages/sign%20in.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/text%20style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(150, 0, 98, 0),
                    child: Text(
                      'Profile',
                      style:
                          TextStyles.Montserrat.copyWith(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => SimpleDialog(
                                title: Center(
                                    child: Text('Are you sure to log out?')),
                                contentPadding: EdgeInsets.all(20),
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignIn(),
                                                ));
                                          },
                                          child: Text(
                                            'Yes',
                                            style:
                                                TextStyle(color: Colors.blue),
                                          )),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            'No',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ))
                                    ],
                                  )
                                ]),
                          );
                        },
                        icon: Icon(
                          Icons.logout,
                          color: Colors.blue,
                        )),
                  )
                ],
              ),
              Text.rich(TextSpan(
                  text: 'Elina Hovakimyan\n',
                  style: TextStyles.NunitoSans.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                  children: [
                    TextSpan(
                        text: 'hello@gmail.com',
                        style: TextStyles.NunitoSans.copyWith(
                            fontWeight: FontWeight.w400, color: Colors.grey))
                  ])),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyListingsPage(),
                        ));
                  },
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
                                text: 'My Listings\n',
                                style: TextStyles.NunitoSans.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w900),
                                children: [
                                  TextSpan(
                                      text: 'Already have 10 listing',
                                      style: TextStyles.NunitoSans.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Colors.grey))
                                ])),
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
                padding: const EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingPage(),
                        ));
                  },
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
                                text: 'Settings\n',
                                style: TextStyles.NunitoSans.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w900),
                                children: [
                                  TextSpan(
                                      text: 'Account, FAQ, Contact',
                                      style: TextStyles.NunitoSans.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Colors.grey))
                                ])),
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
                padding: const EdgeInsets.only(top: 250),
                child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(3),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        backgroundColor:
                            MaterialStatePropertyAll(AppColors.Blue)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateANewListing(),
                          ));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 75),
                      child: Text(
                        'Add a new listing',
                        style:
                            TextStyles.Montserrat.copyWith(color: Colors.white),
                      ),
                    )),
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
