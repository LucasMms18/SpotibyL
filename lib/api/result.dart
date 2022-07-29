class Result {
  String? apiKey;
  String? jwt;
  String? text;
  int? status;

  Result({this.apiKey, this.jwt, this.text, this.status});

  factory Result.fromJson(Map<String, dynamic> json) {
    if (json["message"]["status"] == 200) {
      return Result(
          apiKey: json["content"]["clients"][0]["apiKey"],
          jwt: json["content"]["jwt"],
          text: json["message"]["text"],
          status: json["message"]["status"]);
    } else {
      return Result(
          text: json["message"]["text"], status: json["message"]["status"]);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "apiKey": this.apiKey,
      "jwt": this.jwt,
      "text": this.text,
      "status": this.status,
    };
  }
}
