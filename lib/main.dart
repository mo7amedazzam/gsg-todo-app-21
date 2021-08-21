import 'package:flutter/material.dart';
import 'package:gsg_lc_21_todo/helper/db_Helper.dart';
import 'package:gsg_lc_21_todo/provider/theme_provider.dart';
import 'package:gsg_lc_21_todo/provider/todo_provider.dart';
import 'package:gsg_lc_21_todo/ui/pages/main_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDatabase();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<TodoProvider>(
        create: (context) => TodoProvider(),
      ),
      ChangeNotifierProvider<ThemeProvider>(
        create: (context) => ThemeProvider(),
      )
    ],
  child: MainPage()
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            Provider.of<TodoProvider>(context).testName,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),

        ElevatedButton(
          child: Text('Change Provider Value'),
          onPressed: () {
            Provider.of<TodoProvider>(context, listen: false)
                .changeTestName('Flutter Course');
          },
        ),
    ],
      ),
    );
  }
}
