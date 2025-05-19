import 'dart:convert';

class CustomerProfile {
  final int id;
  final String name;
  final String mobile;
  final String? lang;
  final String? secondaryMobileNumber;
  final String? nationalId;
  final DateTime? dateOfBirth;
  final String? avatar;

  CustomerProfile({
    required this.id,
    required this.name,
    required this.mobile,
    this.lang,
    this.secondaryMobileNumber,
    this.nationalId,
    this.dateOfBirth,
    this.avatar,
  });

  CustomerProfile copyWith({
    int? id,
    String? name,
    String? mobile,
    String? lang,
    String? secondaryMobileNumber,
    String? nationalId,
    DateTime? dateOfBirth,
    String? avatar,
  }) =>
      CustomerProfile(
        id: id ?? this.id,
        name: name ?? this.name,
        mobile: mobile ?? this.mobile,
        lang: lang ?? this.lang,
        secondaryMobileNumber: secondaryMobileNumber ?? this.secondaryMobileNumber,
        nationalId: nationalId ?? this.nationalId,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        avatar: avatar ?? this.avatar,
      );

  factory CustomerProfile.fromRawJson(String str) => CustomerProfile.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomerProfile.fromJson(Map<String, dynamic> json) {
    if (json["name"] == null) {
      return CustomerProfile(
        id: json["id"] ?? 0,
        name: json["account"]["name"] ?? '-',
        mobile: json["account"]["username"],
        lang: json["account"]["lang"],
        secondaryMobileNumber: json["secondary_mobile_number"],
        nationalId: json["national_id"],
        dateOfBirth: json["date_of_birth"] == null ? null : DateTime.parse(json["date_of_birth"]),
        avatar: json["avatar"],
      );
    }
    return CustomerProfile(
      id: json["id"],
      name: json["name"],
      mobile: json["mobile"],
      lang: json["lang"],
      secondaryMobileNumber: json["secondary_mobile_number"],
      nationalId: json["national_id"],
      dateOfBirth: json["date_of_birth"] == null ? null : DateTime.parse(json["date_of_birth"]),
      avatar: json["avatar"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "mobile": mobile,
        "lang": lang,
        "secondary_mobile_number": secondaryMobileNumber,
        "national_id": nationalId,
        "date_of_birth":
            "${dateOfBirth!.year.toString().padLeft(4, '0')}-${dateOfBirth!.month.toString().padLeft(2, '0')}-${dateOfBirth!.day.toString().padLeft(2, '0')}",
        "avatar": avatar,
      };
}
