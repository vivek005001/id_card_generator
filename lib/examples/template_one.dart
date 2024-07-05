import 'package:flutter/material.dart';

class TemplateOne extends StatelessWidget {
  final String photoUrl;
  final String name;
  final String phoneNumber;
  final String emailAddress;
  final String address;

  TemplateOne({
    required this.photoUrl,
    required this.name,
    required this.phoneNumber,
    required this.emailAddress,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/background1.png'), // Add your background image path
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(photoUrl),
              ),
              SizedBox(height: 10),
              Text(
                name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Adjust font color for better visibility
                ),
              ),
              SizedBox(height: 5),
              Text(phoneNumber, style: TextStyle(color: Colors.white)),
              Text(emailAddress, style: TextStyle(color: Colors.white)),
              Text(address, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
