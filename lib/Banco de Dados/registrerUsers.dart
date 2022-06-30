class RegisterUsers {
  final String name;
  final String email;
  final String password;

  RegisterUsers({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  String toString() {
    return 'Register{name: $name, email: $email, password: $password}';
  }

  factory RegisterUsers.fromJson(Map<String, dynamic> json) {
    return RegisterUsers(
      name: json["name"] ?? "",
      email: json["email"] ?? "",
      password: json["password"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": this.name,
      "email": this.email,
      "password": this.password,
    };
  }
}
