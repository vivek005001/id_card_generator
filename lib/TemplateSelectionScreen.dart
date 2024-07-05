import 'package:flutter/material.dart';
import 'Templates.dart'; // Import your TemplateOne and TemplateTwo classes

class TemplateSelectionScreen extends StatelessWidget {
  final List<Map<String, String>> templatesData = [
    {
      'templateType': 'TemplateOne',
      'photoUrl': 'https://i.imgur.com/S7juJlH.jpeg',
      'studentName': 'STUDENT NAME',
      'standard': 'Std. - 5th (C)',
      'fatherName': 'Mr. Vivek Aggarwal',
      'dob': '05-01-2003',
      'address': 'ABC street 110\nCP New Delhi',
      'mobile': '+91 9876543210',
      'bloodGroup': 'B+',
      'backgroundImage': 'lib/assets/background1.png',
    },
    {
      'templateType': 'TemplateTwo',
      'photoUrl': 'https://i.imgur.com/S7juJlH.jpeg',
      'name': 'Jane Smith',
      'phoneNumber': '9876-543-210',
      'emailAddress': 'janesmith@mail.com',
      'address': 'Another street, Another country',
      'backgroundImage': 'lib/assets/background2.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Template'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: templatesData.length,
        itemBuilder: (context, index) {
          final data = templatesData[index];
          return GestureDetector(
            onTap: () {
              navigateToTemplateScreen(context, data);
            },
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(data['backgroundImage']!),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(data['photoUrl']!),
                    ),
                    SizedBox(height: 10),
                    Text(
                      data['templateType'] == 'TemplateOne' ? data['studentName']! : data['name']!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void navigateToTemplateScreen(BuildContext context, Map<String, String> data) {
    switch (data['templateType']) {
      case 'TemplateOne':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TemplateOne(
              photoUrl: data['photoUrl']!,
              studentName: data['studentName']!,
              standard: data['standard']!,
              fatherName: data['fatherName']!,
              dob: data['dob']!,
              address: data['address']!,
              mobile: data['mobile']!,
              bloodGroup: data['bloodGroup']!,
            ),
          ),
        );
        break;
      case 'TemplateTwo':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TemplateTwo(
              photoUrl: data['photoUrl']!,
              name: data['name']!,
              phoneNumber: data['phoneNumber']!,
              emailAddress: data['emailAddress']!,
              address: data['address']!,
            ),
          ),
        );
        break;
      default:
        break;
    }
  }
}