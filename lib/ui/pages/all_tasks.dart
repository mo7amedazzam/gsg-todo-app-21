import 'package:flutter/material.dart';
import 'package:gsg_lc_21_todo/model/task_model.dart';
import 'package:gsg_lc_21_todo/provider/todo_provider.dart';
import 'package:gsg_lc_21_todo/widgets/task_widget.dart';
import 'package:provider/provider.dart';

class AllTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
     child: Selector<TodoProvider,List<TaskModel>>(
     builder: (context,data,x){
       return data.length==0?Center(child: Text('empty'),):ListView.builder(
           itemCount: data.length,
           itemBuilder: (context,index){

             return TaskWidget(
               data[index]
             );
           });
     },
       selector: (context,provider){
       return provider.allTasks;
       },
     )

);
  }
}
