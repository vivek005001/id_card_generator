import 'package:flutter/material.dart';
import 'TemplateSelectionScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ID Card Generator',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID Card Generator'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TemplateSelectionScreen(),
              ),
            );
          },
          child: Text('Select Template'),
        ),
      ),
    );
  }
}
