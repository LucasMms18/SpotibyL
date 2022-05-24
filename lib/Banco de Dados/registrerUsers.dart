class Register {
  final String name;
  final String email;
  final String password;

  Register({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  String toString() {
    return 'Register{name: $name, email: $email, password: $password}';
  }

  factory Register.fromJson(Map<String, dynamic> json) {
    return Register(
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

//

}
