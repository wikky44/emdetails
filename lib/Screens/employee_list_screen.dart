// employee_list_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../employee_provider.dart';


class EmployeeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EmployeeProvider>(context);
    final employees = provider.employees;

    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
      ),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) {
          final employee = employees[index];
          return ListTile(
            title: Text(employee.name),
            subtitle: Text('Salary: ${employee.salary}, Age: ${employee.age}'),
          );
        },
      ),
    );
  }
}
