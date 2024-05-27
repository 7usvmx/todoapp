// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todoapp/utilities/feeling.dart';
import 'package:todoapp/utilities/taskCard.dart';

class TasksController {
  String taskTitle;
  String taskDetails;
  bool taksStatus;

  TasksController({
    required this.taskTitle,
    required this.taskDetails,
    required this.taksStatus,
  });
}

List myTasks = [
  TasksController(
    taskTitle: "Meeting",
    taskDetails: " last website project (Noba Store) meeting at 4 PM",
    taksStatus: true,
  ),
  TasksController(
    taskTitle: "Read Book",
    taskDetails: "some pages of new book ",
    taksStatus: true,
  ),
  TasksController(
    taskTitle: "Learn new line of code",
    taskDetails: "Dialogs in flutter",
    taksStatus: true,
  ),
  TasksController(
    taskTitle: "Go to GYM",
    taskDetails: "Today i should go to GYM at 9 PM ",
    taksStatus: true,
  ),
];

class Todoapp extends StatefulWidget {
  const Todoapp({super.key});

  @override
  State<Todoapp> createState() => _TodoappState();
}

class _TodoappState extends State<Todoapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! appBar Design section
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 260,
        backgroundColor: Colors.amber,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //! Greeting Message
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, Husam 👋",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 14.0),
                    Text(
                      "what is your tasks for today ?",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
                //! Notification and Setting side
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.amber[300],
                      ),
                      // padding: EdgeInsets.all(1),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 28,
                          )),
                    ),
                    SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.amber[300],
                      ),
                      // padding: EdgeInsets.all(1),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            //! how do you feel?
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "How do you feel today mr. Husam ?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FeelingOption(emojy: "😣"),
                    FeelingOption(emojy: "😐"),
                    FeelingOption(emojy: "🙂"),
                    FeelingOption(emojy: "😀"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      //! Start body Design
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            //! Main task field design
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ...myTasks.map(
                      (e) => TaskCard(
                        taskTitle: e.taskTitle,
                        taskDetails: e.taskDetails,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
