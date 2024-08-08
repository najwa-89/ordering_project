import 'package:flutter/material.dart';
import 'package:ordering_app/screen/home_screen.dart';
import 'package:ordering_app/user.dart';

Map<String, User> users = {
  "najwa@gmail.com": User(email: "najwa@gmail.com", password: " 1234"),
  "thamer@gmail.com": User(email: "thamer@gmail.com", password: "aszx"),
};
bool isSecured = true;

class AuthWidget extends StatelessWidget {
  TextEditingController emailControllr = TextEditingController();

  TextEditingController passwordControllr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/logoN.jpeg',
            width: 500,
            height: 500,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: emailControllr,
                  decoration: InputDecoration(
                    label: Text("Enter Email"),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passwordControllr,
                  obscureText: isSecured,
                  decoration: InputDecoration(
                    label: Text("Enter password"),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        print(isSecured);
                        isSecured = !isSecured;
                        print(isSecured);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      icon: Icon(Icons.remove_red_eye),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    String email = emailControllr.text;
                    String password = passwordControllr.text;
                    User user = users[email]!;
                    if (email == user.email && password == user.password) {
                      print("logged");
                    } else {
                      print("email or password is wrong");
                    }
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (v) => HomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromARGB(249, 158, 98, 14),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "login",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.login, color: Colors.black),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
