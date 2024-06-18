import 'package:flutter/material.dart';
import 'package:my_app/pages/profile.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text%20style.dart';
import 'package:dotted_border/dotted_border.dart';

class CreateANewListing extends StatefulWidget {
  const CreateANewListing({super.key});

  @override
  State<CreateANewListing> createState() => _CreateANewListingState();
}

class _CreateANewListingState extends State<CreateANewListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
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
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Text(
                    'Create a new listing',
                    style: TextStyles.Montserrat.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                )
              ],
            ),
            Text(
              'Upload photos',
              style: TextStyles.Montserrat.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10),
                    color: Colors.grey,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(),
                      child: IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle,
                            color: Colors.grey[350],
                          )),
                    ),
                  ),
                ),
                Stack(clipBehavior: Clip.none, children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: SizedBox(
                      height: 105,
                      width: 105,
                      child: Image.asset(
                        Images.BlackSimpleLamp,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -4,
                    right: -18,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.dangerous_outlined,
                          color: Colors.blue,
                        )),
                  ),
                ])
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('Title',
                  style: TextStyles.Montserrat.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 14)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    border: InputBorder.none,
                    hintText: 'Listing Title',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Text('Category',
                style: TextStyles.Montserrat.copyWith(
                    fontWeight: FontWeight.w500, fontSize: 14)),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: DropdownButtonFormField(
                hint: Text('Select the category',
                    style: TextStyle(color: Colors.grey)),
                iconSize: 25,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                onChanged: (value) {
                  setState(() {});
                },
                icon: Icon(Icons.keyboard_arrow_down, color: Colors.blue),
                items: const [
                  DropdownMenuItem(
                    value: 'Select the category',
                    child: Text('Select the category',
                        style: TextStyle(color: Colors.grey)),
                  ),
                  DropdownMenuItem(
                    value: 'Chair',
                    child: Text('Chair'),
                  ),
                  DropdownMenuItem(
                    value: 'Table',
                    child: Text('Table'),
                  ),
                  DropdownMenuItem(
                    value: 'Arm Chair',
                    child: Text('Arm Chair'),
                  ),
                  DropdownMenuItem(
                    value: 'Bed',
                    child: Text('Bed'),
                  ),
                  DropdownMenuItem(
                    value: 'Lamp',
                    child: Text('Lamp'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Price',
                  style: TextStyles.Montserrat.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 14)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    border: InputBorder.none,
                    hintText: 'Enter price in USD',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Text('Description',
                style: TextStyles.Montserrat.copyWith(
                    fontWeight: FontWeight.w500, fontSize: 14)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 100),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    border: InputBorder.none,
                    hintText: 'Tell us more...',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.Blue)),
                  onPressed: () {},
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 116),
                    child: Text(
                      'Submit',
                      style:
                          TextStyles.Montserrat.copyWith(color: Colors.white),
                    ),
                  )),
            ),
          ],
        )),
      )),
    );
  }
}
