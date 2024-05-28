// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final taskTitle;
  final taskDetails;
  final status;
  final id;
  final Function changer;

  const TaskCard({
    super.key,
    required this.taskTitle,
    required this.taskDetails,
    required this.changer,
    required this.id,
    this.status,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(bottom: 15),
        width: double.infinity,
        padding: EdgeInsets.all(28),
        child:
            //! task card design Starting From here
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //! Title Of task
                Text(
                  taskTitle,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                //! Task Details
                SizedBox(
                  width: 250,
                  child: Text(
                    taskDetails,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                changer(id);
              },
              icon: Icon(
                status == true ? Icons.check_rounded : Icons.close_rounded,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
