class User {
  final String fulname;
  final String email;
  final String companyid;
  final String password;

  User({
    required this.fulname,
    required this.email,
    required this.companyid,
    required this.password, 
  });

  Map<String, String> toJson() {
    return {
      'fulname': fulname,
      'email': email,
      'companyid': companyid,
      'password': password,
    };
  }

  static User fromJson(Map<String, String> json) {
    return User(
      fulname: json['fullname']!,
      email: json['email']!,
      companyid: json['companyid']!,
      password: json['password']!,
    );
  }
}
