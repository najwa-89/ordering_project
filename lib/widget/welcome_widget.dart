import 'package:flutter/material.dart';
import 'package:ordering_app/screen/home_screen.dart';
import 'package:ordering_app/widget/auth_widget.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/logoN.jpeg",
                height: 500,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "ًأهلاً بكم في عالم القهوة",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontStyle: FontStyle.normal),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Text(
              " نقدم لـعشاق القهوة أجود أنواع القهوة المختصة",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
          ),
          SizedBox(height: 90),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AuthWidget(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(249, 158, 98, 14),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        offset: Offset(0, 6)),
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    "اضغط هنا",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
