class Post {
  String? sId;
  ContactInfo? contactInfo;
  List<String>? registeredCourses;
  double? averageScore;
  int? dateOfBirth;
  String? studentClass;
  String? fullName;
  String? createdAt;
  String? updatedAt;

  Post({
    this.sId,
    this.contactInfo,
    this.registeredCourses,
    this.averageScore,
    this.dateOfBirth,
    this.studentClass,
    this.fullName,
    this.createdAt,
    this.updatedAt,
  });

  Post.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    contactInfo = json['contactInfo'] != null ? ContactInfo.fromJson(json['contactInfo']) : null;
    registeredCourses = List<String>.from(json['registeredCourses']);
    averageScore = json['averageScore'];
    dateOfBirth = json['dateOfBirth'];
    studentClass = json['class'];
    fullName = json['fullName'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    if (contactInfo != null) {
      data['contactInfo'] = contactInfo!.toJson();
    }
    data['registeredCourses'] = registeredCourses;
    data['averageScore'] = averageScore;
    data['dateOfBirth'] = dateOfBirth;
    data['class'] = studentClass;
    data['fullName'] = fullName;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class ContactInfo {
  String? address;
  String? email;
  String? phoneNumber;
  String? sId;

  ContactInfo({this.address, this.email, this.phoneNumber, this.sId});

  ContactInfo.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['_id'] = sId;
    return data;
  }
}
