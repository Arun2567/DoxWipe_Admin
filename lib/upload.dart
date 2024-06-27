import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyImagePickerApp(),
    );
  }
}

class MyImagePickerApp extends StatefulWidget {
  @override
  _MyImagePickerAppState createState() => _MyImagePickerAppState();
}

class _MyImagePickerAppState extends State<MyImagePickerApp> {
  // Store the selected image file path
  String? _imagePath;

  // Function to open the device's gallery and select an image
  Future<void> _pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        // Store the selected image file path
        _imagePath = pickedFile.path;
      });
    } else {
      // The user canceled the image selection.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
        title: Text('Request Admin'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            )
        ),
      ),
      body:Stack(
        fit: StackFit.expand, // Make the stack children fill the entire screen
        children: <Widget>[
      // Background Image
      Image.asset(
      'image/doxwipe.png', // Replace with your image path
        fit: BoxFit.cover, // Cover the entire screen
      ),
      Container(
        color: Colors.white.withOpacity(0.9), // Adjust the opacity (0.0 to 1.0) for the desired dim level.
      ),
      Center(
        child:Container(
          width: 350,
        child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              onPressed: _pickImageFromGallery,
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(350, 60)),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.lightBlueAccent.withOpacity(0.8), // Change this color to your desired button color
                ),// Adjust the size as needed
              ),
              child: Text('Pick Image from Gallery'),
            ),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: _pickImageFromGallery,
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(350, 60)),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.lightBlueAccent.withOpacity(0.8), // Change this color to your desired button color
                ),// Adjust the size as needed
              ),
              child: Text('upload police complaint copy'),
            ),
            SizedBox(height: 30),
            TextField(
              maxLines: null, // Allows multiple lines of input
              keyboardType: TextInputType.multiline, // Enables multiline input
              decoration: InputDecoration(
                hintText: 'reason to delete photos or videos',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: (){},

              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.lightBlueAccent.withOpacity(0.8), // Change this color to your desired button color
                ),// Adjust the size as needed
              ),// Change this color to your desired button color

              child: Text('Send Request'),
            ),
          ],
        ),
        ),
        ),
      ),
    ]));
  }
}

