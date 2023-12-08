import 'package:flutter/material.dart';
import 'api_service.dart';
import 'models/employee.dart';
import 'models/employee_list.dart';


class EmployeeProvider with ChangeNotifier {
  final ApiService apiService = ApiService('https://dummy.restapiexample.com/api/v1/employees'); // Replace with your actual base URL
  List<Employee> employees = [];

  Future<void> addEmployee(Employee employee) async {
    try {
      final response = await apiService.post('create_employee_api_endpoint', {
        'name': employee.name,
        'salary': employee.salary,
        'age': employee.age,
      });

      final newEmployee = Employee.fromJson(response['data']);
      employees.add(newEmployee);
      notifyListeners();
    } catch (e) {
      // Handle error
      print('Error adding employee: $e');
    }
  }

  Future<void> fetchEmployees() async {
    try {
      final response = await apiService.get('employee_list_api_endpoint');

      final employeeList = EmployeeList.fromJson(response);
      employees = employeeList.data;
      notifyListeners();
    } catch (e) {
      // Handle error
      print('Error fetching employees: $e');
    }
  }
}
