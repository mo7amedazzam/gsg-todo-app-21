import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_lc_21_todo/helper/theme_helper.dart';
import 'package:gsg_lc_21_todo/model/task_model.dart';
import 'package:gsg_lc_21_todo/provider/theme_provider.dart';
import 'package:gsg_lc_21_todo/provider/todo_provider.dart';
import 'package:provider/provider.dart';

class TaskWidget extends StatelessWidget {
  TaskModel taskModel;

  TaskWidget(this.taskModel);

  @override
  Widget build(BuildContext context) {
    return Consumer2<TodoProvider, ThemeProvider>(
      builder: (context, provider, provider2, x) =>
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: provider2.themeData == ThemeHelper.darkTheme
                    ? Colors.grey
                    : taskModel.isComplete
                    ? Colors.green
                    : Colors.redAccent),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Checkbox(value: taskModel.isComplete, onChanged: (v) {
                  taskModel.isComplete = v;
                  provider.updateTask(taskModel);
                }),
                SizedBox(width: 10,),
                Text(taskModel.taskName,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Spacer(),
                IconButton(onPressed: () {
                  provider.deleteTask(taskModel);
                }, icon: Icon(Icons.delete),)
              ],
            ),
          ),
    );
  }


}