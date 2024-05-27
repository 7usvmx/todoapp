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

class Todoapp extends StatefulWidget {
  const Todoapp({super.key});

  @override
  State<Todoapp> createState() => _TodoappState();
}

class _TodoappState extends State<Todoapp> {
  final errorMsg = "title and details can not be empty";
  final titleController = TextEditingController();
  final detailsController = TextEditingController();

  errorMsgFunc() {
    return errorMsg;
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
      taksStatus: false,
    ),
    TasksController(
      taskTitle: "Learn new line of code",
      taskDetails: "Dialogs in flutter",
      taksStatus: false,
    ),
    TasksController(
      taskTitle: "Go to GYM",
      taskDetails: "Today i should go to GYM at 9 PM ",
      taksStatus: true,
    ),
    TasksController(
      taskTitle: "Go to GYM",
      taskDetails: "Today i should go to GYM at 9 PM ",
      taksStatus: true,
    ),
    TasksController(
      taskTitle: "Go to GYM",
      taskDetails: "Today i should go to GYM at 9 PM ",
      taksStatus: false,
    ),
  ];

  newTask() {
    myTasks.insert(
      0,
      TasksController(
        taskTitle: titleController.text,
        taskDetails: detailsController.text,
        taksStatus: true,
      ),
    );
    // myTasks.add();
  }

  //! Error message

// ! this code for real time listening to text field texts
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   titleController.addListener(test);
  // }
// ! this code for real time listening to text field texts

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! floating button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //! Open Add task section
          // when i tab on floating button
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  width: double.infinity,
                  height: 800,
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    //! body of model sheet
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //! add task title
                            Text(
                              "Add new task",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              errorMsg,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(height: 28),
                            //! add title
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber[300],
                              ),
                              padding: EdgeInsets.all(18),
                              width: double.infinity,
                              child: TextField(
                                controller: titleController,
                                maxLength: 26,
                                decoration: InputDecoration(
                                  hintMaxLines: 26,
                                  labelText: "Add task title",
                                  prefixIcon: Icon(Icons.task_alt_rounded),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 28),
                            //! add details
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber[300],
                              ),
                              padding: EdgeInsets.all(18),
                              width: double.infinity,
                              child: TextField(
                                controller: detailsController,
                                decoration: InputDecoration(
                                  labelText: "Add task Details",
                                  prefixIcon: Icon(Icons.task_alt_rounded),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 18),
                            //! Add task button
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                // backgroundColor: Colors.transparent,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 50,
                                  vertical: 10,
                                ),
                                textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (titleController.text.isEmpty ||
                                      detailsController.text.isEmpty) {
                                    // newTask();
                                    errorMsgFunc();
                                  } else {
                                    newTask();
                                    titleController.text = "";
                                    detailsController.text = "";
                                    Navigator.pop(context);
                                  }
                                });
                              },
                              child: Text("add task"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              isScrollControlled: true);
        },
        tooltip: "add new task",
        backgroundColor: Colors.amber[200],
        splashColor: Colors.amber,
        child: Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 35,
        ),
      ),
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
                        status: e.taksStatus,
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
