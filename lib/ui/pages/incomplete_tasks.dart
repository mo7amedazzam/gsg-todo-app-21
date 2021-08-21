import 'package:flutter/material.dart';
import 'package:gsg_lc_21_todo/model/task_model.dart';
import 'package:gsg_lc_21_todo/provider/todo_provider.dart';
import 'package:gsg_lc_21_todo/widgets/task_widget.dart';
import 'package:provider/provider.dart';


class InCompleteTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(builder: (context,provider,x){
      return ListView.builder(
          itemCount: provider.incompleteTasks.length,
          itemBuilder: (context,index){
            return TaskWidget(
                provider.incompleteTasks [index]);

          });
    });
  }

}
