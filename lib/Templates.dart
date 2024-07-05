import 'package:flutter/material.dart';

class TemplateOne extends StatelessWidget {
  final String photoUrl;
  final String studentName;
  final String standard;
  final String fatherName;
  final String dob;
  final String address;
  final String mobile;
  final String bloodGroup;

  TemplateOne({
    required this.photoUrl,
    required this.studentName,
    required this.standard,
    required this.fatherName,
    required this.dob,
    required this.address,
    required this.mobile,
    required this.bloodGroup,
  });

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF58ABB4); // Define your custom color here

    return Scaffold(
      appBar: AppBar(
        title: Text('Template One'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/background1.png'), // Add your background image path
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 150,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(

                            color: Color(0xFF58ABB4), // Replace with your desired border color
                            width: 2, // Adjust border width as needed
                          ),
                          image: DecorationImage(
                            image: NetworkImage(photoUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      // Text(
                      //   name,
                      //   style: TextStyle(
                      //     fontSize: 24,
                      //     fontWeight: FontWeight.bold,
                      //     color: myColor, // Use your custom color here
                      //   ),
                      // ),
                      SizedBox(height: 32),

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            DetailRow(label: 'Father Name', value: fatherName),
                            DetailRow(label: 'DOB', value: dob),
                            DetailRow(label: 'Address', value: address),
                            DetailRow(label: 'Mobile', value: mobile),
                            DetailRow(label: 'Blood Group', value: bloodGroup),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class DetailRow extends StatelessWidget {
  final String label;
  final String value;

  DetailRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF58ABB4),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(color: Color(0xFF58ABB4)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}


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
    Color myColor = Color(0xFF58ABB4); // Define your custom color here

    return Scaffold(
      appBar: AppBar(
        title: Text('Template Two'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/background2.png'), // Add your background image path
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          image: DecorationImage(
                            image: NetworkImage(photoUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: myColor, // Use your custom color here
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(phoneNumber, style: TextStyle(color: myColor)),
                      Text(emailAddress, style: TextStyle(color: myColor)),
                      Text(address, style: TextStyle(color: myColor)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
