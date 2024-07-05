import 'package:flutter/material.dart';

class TemplatePreviewScreen extends StatelessWidget {
  final Widget template;

  TemplatePreviewScreen({required this.template});

  @override
  Widget build(BuildContext context) {
    // Calculate target width and height based on screen size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double aspectRatio = screenWidth / screenHeight;

    double targetWidth = screenWidth * 0.8; // Adjust the scale factor as needed
    double targetHeight = targetWidth / aspectRatio;

    return Scaffold(
      appBar: AppBar(
        title: Text('Template Preview'),
      ),
      body: Center(
        child: Container(
          width: targetWidth,
          height: targetHeight,
          child: template,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle save or generate PDF logic
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
