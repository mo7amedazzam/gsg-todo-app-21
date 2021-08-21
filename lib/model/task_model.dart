import 'dart:convert';

import 'package:flutter/material.dart';

class TaskModel {
  int id;
  String taskName;
  bool isComplete;
  TaskModel({
    this.id,
    @required this.taskName,
    @required this.isComplete,
  });

  Map<String, dynamic> toMap() {
    return {
      'taskName': taskName,
      'isComplete': isComplete ? 1 : 0,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'],
      taskName: map['taskName'],
      isComplete: map['isComplete'] == 1 ? true : false,
    );
  }
}
