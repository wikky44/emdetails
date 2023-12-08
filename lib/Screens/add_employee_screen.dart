
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../employee_provider.dart';
import '../models/employee.dart';
class AddEmployeeScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: salaryController,
              decoration: InputDecoration(labelText: 'Salary'),
            ),
            TextField(
              controller: ageController,
              decoration: InputDecoration(labelText: 'Age'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final provider =
                Provider.of<EmployeeProvider>(context, listen: false);
                final newEmployee = Employee(
                  name: nameController.text,
                  salary: salaryController.text,
                  age: ageController.text,
                  id: 0, // You can set it to any default value as per your requirement
                );
                provider.addEmployee(newEmployee);
                Navigator.of(context).pop();
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
