import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  static String screenRoute = "home_screen";

  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List coffees = [
    "محاصيل الاسبريسو",
    "محاصيل التقطير",
    "محاصيل القهوة الباردة"
  ];

  List coffee2 = ["مجموعة الكيف", "مجموعة الفن"];

  List<Color> bgColors = [
    Color.fromARGB(255, 234, 233, 231),
    Color.fromARGB(255, 234, 233, 231),
    Color.fromARGB(255, 234, 233, 231),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sunrise Coffee",
                        style: TextStyle(
                            color: Color.fromARGB(249, 158, 98, 14),
                            fontSize: 30),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/add.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          left: 40,
                          child: Container(
                            padding: EdgeInsets.all(6),
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 1),
                                color: Colors.red,
                                shape: BoxShape.circle),
                          ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration:
                          InputDecoration(hintText: "ابحث عن قهوتك المفضلة"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(248, 99, 61, 9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/coffee.jpeg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "الاصناف",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("اظهار الكل",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(155, 233, 142, 23),
                            fontWeight: FontWeight.bold,
                          )))
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: coffees.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: bgColors[index],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/${coffees[index]}.jpeg",
                          width: 80,
                          height: 80,
                        ),
                        Text(
                          coffees[index],
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "المجموعات",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "اظهار الكل",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(155, 233, 142, 23),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: coffee2.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      margin: EdgeInsets.only(
                          left: 15, top: 5, bottom: 5, right: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image.asset(
                              "assets/${coffee2[index]}.jpeg",
                              height: 120,
                              width: MediaQuery.of(context).size.width / 1.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      coffee2[index],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "المجموعات المميزة",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 20,
                                          color:
                                              Color.fromARGB(155, 233, 142, 23),
                                        ),
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          "999 تقييم",
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Color.fromARGB(
                                                155, 233, 142, 23),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text("اقرب لك من قلبك "),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(155, 233, 142, 23),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        "\SAR 200",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
