import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List<dynamic> countries = [];

  @override
  void initState() {
    super.initState();
    fetchCountries();
  }

  void fetchCountries() async {
    final response =
        await http.get(Uri.parse('https://restcountries.com/v3.1/all'));
    final json = jsonDecode(response.body);

    setState(() {
      countries = json;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: countries.length,
      itemBuilder: (context, index) {
        final countryData = countries[index];
        final countryName = countryData["name"]['common'];
        // ignore: unused_local_variable
        final countryFlag = countryData['flag'];
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  countryName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            )
          ],
        );
      },
    ));
  }
}
