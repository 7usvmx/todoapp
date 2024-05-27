import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final allTasks;
  final doneTasks;

  const Counter({
    super.key,
    required this.allTasks,
    required this.doneTasks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.amber[300],
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      width: 100,
      // padding: EdgeInsets.all(1),
      child: Text(
        "$doneTasks of $allTasks",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
