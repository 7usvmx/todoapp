// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            //! main coumn
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //! Inner column
                SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 30,
                      ),
                    ),

                    SvgPicture.asset(
                      "assets/svg/welcome.svg",
                      // height: 200,
                      // width: 200,
                    ),
                    // SizedBox(height: 10),
                    Container(
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(18),
                      //   color: Colors.amber[300],
                      // ),
                      height: 80,
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/home");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Join For Free",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber[300],
                          padding: EdgeInsets.all(18),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 160),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "TodoApp V1.0.0",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
