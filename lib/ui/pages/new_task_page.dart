import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_lc_21_todo/helper/db_Helper.dart';
import 'package:gsg_lc_21_todo/model/task_model.dart';
import 'package:gsg_lc_21_todo/provider/todo_provider.dart';
import 'package:provider/provider.dart';

class NewTaskPage extends StatefulWidget{

  @override
  _NewTaskPageState createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  bool isComplete =false;

  String taskName;

  saveTask(){
    Provider.of<TodoProvider>(context,listen: false)
        .insertTask(TaskModel(isComplete: isComplete, taskName: taskName));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Task"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(children: [
          Text('Insert New Task'),
          TextField(
            onChanged: (v){
              this.taskName = v;
            },
            decoration: InputDecoration(
                labelText: "Task Name",
                border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
          ),
          Checkbox(
            value: isComplete,
            onChanged: (v) {
              this.isComplete = v;
              setState(() {});
            }),

            RaisedButton(
              child: Text("Insert New Task"),
              onPressed: (){
                saveTask();
              }),

        ],
    ),
      ),
    );
  }
}