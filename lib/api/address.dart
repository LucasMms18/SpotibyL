class Address {
  String? country;
  String? stateUF;
  String? city;
  String? street;
  String? zip;
  String? neighborhood;

  String fulAddress() => "$street - $neighborhood - $city - $stateUF - $country";

  Address(
      {this.country,
      this.stateUF,
      this.city,
      this.street,
      this.zip,
      this.neighborhood});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      country: json["country"],
      stateUF: json["stateUF"],
      city: json["city"],
      street: json["street"],
      zip: json["zip"],
      neighborhood: json["neighborhood"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "country": this.country,
      "stateUF": this.stateUF,
      "city": this.city,
      "street": this.street,
      "zip": this.zip,
      "neighborhood": this.neighborhood,
    };
  }
}
