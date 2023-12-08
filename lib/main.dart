import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/add_employee_screen.dart';
import 'Screens/employee_list_screen.dart';
import 'employee_provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => EmployeeProvider()),
      ],
      child: MaterialApp(
        title: 'Employee App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: EmployeeListScreen(),
        routes: {
          '/add_employee': (context) => AddEmployeeScreen(),
        },
      ),
    );
  }
}
