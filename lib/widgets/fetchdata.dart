// ignore_for_file: camel_case_types
import 'dart:convert';
import 'package:http/http.dart' as http;

class dataclass {
  final int userId;
  final int id;
  final String title;

  const dataclass({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory dataclass.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'userId': int userId,
        'id': int id,
        'title': String title,
      } =>
        dataclass(
          userId: userId,
          id: id,
          title: title,
        ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}









Future<dataclass> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/2'));

  if (response.statusCode == 200) {
    
    return dataclass.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    
    throw Exception('Failed to load album');
  }
}


//fetch countries data api

