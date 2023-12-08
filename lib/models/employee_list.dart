
import 'employee.dart';

class EmployeeList {
  late String status;
  late List<Employee> data;

  EmployeeList({
    required this.status,
    required this.data,
  });

  factory EmployeeList.fromJson(Map<String, dynamic> json) {
    return EmployeeList(
      status: json['status'],
      data: (json['data'] as List<dynamic>)
          .map((e) => Employee.fromJson(e))
          .toList(),
    );
  }
}
