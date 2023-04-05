import 'package:flutter/material.dart';

import 'package:first_app/pages/Daftar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFADD8E6),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Log in",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color(0xffF0F8FF),
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                labelText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              autocorrect: false,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                fillColor: Color(0xffF0F8FF),
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("MASUK"),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff2F4F4F),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DaftarPage()));
              },
              child: Text(
                "Belum Punya Akun? Daftar",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Colors.blue[900]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}