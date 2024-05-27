// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FeelingOption extends StatelessWidget {
  final emojy;

  const FeelingOption({super.key, required this.emojy});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(18),
      //   color: Colors.amber[300],
      // ),
      height: 80,
      width: 80,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              emojy,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber[200],
          padding: EdgeInsets.all(18),
        ),
      ),
    );
  }
}
// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class FeelingOption extends StatelessWidget {
//   final emojy;

//   const FeelingOption({super.key, required this.emojy});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.white60,
//       ),
//       padding: EdgeInsets.all(14),
//       margin: EdgeInsets.only(top: 10),
//       child: GestureDetector(
//         onTap: () {},
//         child: Text(
//           emojy,
//           style: TextStyle(fontSize: 30),
//         ),
//       ),
//     );
//   }
// }
