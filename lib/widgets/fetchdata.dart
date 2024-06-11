// ignore_for_file: camel_case_types

class dataclass {
  final String fulname;
  final String email;
  final String companyid;
  final String password;

  const dataclass({
    required this.fulname,
    required this.email,
    required this.companyid,
    required this.password,
  });

  factory dataclass.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'fulname': String fulname,
        'email': String email,
        'companyid': String companyid,
        'password': String password,
      } =>
        dataclass(
          fulname: fulname,
          email: email,
          companyid: companyid,
          password: password,
        ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}





