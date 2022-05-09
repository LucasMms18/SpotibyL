class Register {
  final String name;
  final String email;
  final String password;
  final int birthday;

  Register({
    required this.name,
    required this.email,
    required this.password,
    required this.birthday,
  });

  @override
  String toString() {
    return 'Register{name: $name, email: $email, password: $password, birthday: $birthday}';
  }

  factory Register.fromJson(Map<String, dynamic> json) {
    return Register(
      name: json["name"] ?? "",
      email: json["email"] ?? "",
      password: json["password"] ?? "",
      birthday: json["birthday"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": this.name,
      "email": this.email,
      "password": this.password,
      "birthday": this.birthday,
    };
  }

//

}
