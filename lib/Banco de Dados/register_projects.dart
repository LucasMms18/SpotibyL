class RegisterProjects {
  final String projectName;
  final String projectPassword;

  RegisterProjects({
    required this.projectName,
    required this.projectPassword,
  });

  @override
  String toString() {
    return 'Register{projectName: $projectName, projectPassword: $projectPassword}';
  }

  factory RegisterProjects.fromJson(Map<String, dynamic> json) {
    return RegisterProjects(
        projectName: json["projectName"] ?? "",
        projectPassword: json["projectPassword"] ?? "");
  }

  Map<String, dynamic> toJson() {
    return {
      "projectName": this.projectName,
      "projectPassword": this.projectPassword
    };
  }
}
