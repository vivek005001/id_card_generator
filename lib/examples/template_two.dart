import 'package:flutter/material.dart';

class TemplateTwo extends StatelessWidget {
  final String photoUrl;
  final String name;
  final String phoneNumber;
  final String emailAddress;
  final String address;

  TemplateTwo({
    required this.photoUrl,
    required this.name,
    required this.phoneNumber,
    required this.emailAddress,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView( // Use SingleChildScrollView to handle overflow
          child: Column(
            children: [
              // Your other widgets
              Image.network(photoUrl),
              Text(name),
              Text(phoneNumber),
              Text(emailAddress),
              Text(address),
            ],
          ),
        ),
      ),
    );
  }
}
