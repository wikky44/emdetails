class Employee {
  late String name;
  late String salary;
  late String age;
  late int id;

  Employee({
    required this.name,
    required this.salary,
    required this.age,
    required this.id,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      name: json['employee_name'],
      salary: json['employee_salary'].toString(),
      age: json['employee_age'].toString(),
      id: json['id'],
    );
  }
}