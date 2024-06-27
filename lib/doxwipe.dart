import 'package:doxwipe/upload.dart';
import 'package:flutter/material.dart';

class doxwipe extends StatelessWidget {
  const doxwipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
        title: Text('Doxwipe'),
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
        child: Container(
          width: 330,
          child:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return upload();
                  }
                  ));
                },
          child: Row(
          mainAxisSize: MainAxisSize.min, // This ensures the Row takes minimum space
            children: [
              Icon(Icons.upload_file), // Replace with your desired icon
              SizedBox(width: 8), // Add some spacing between the icon and text
              Text('Upload photo or video'),
            ],
          ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.lightBlueAccent.withOpacity(0.8), // Change this color to your desired button color
                  ),
                  minimumSize: MaterialStateProperty.all(Size(350, 60)), // Adjust the size as needed
                ),
        ),
              SizedBox(
                height: 100,
              ),
              Text(
                'process in uploading image or videos \n ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20, // Adjust the font size as needed
                  color: Colors.black, // Adjust the text color as needed
                ),
                textAlign: TextAlign.justify, // Align the text to justify (or use other alignment values)
              ),
              Text(
                '1.Select a video or photo want to be delete\n'
                    '2.Upload local police complaint copy in pdf format\n'
                    '3.enter a valid reason for deleting the content\n'
                    '4.Upload image or video\n',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  color: Colors.black, // Adjust the text color as needed
                ),
                textAlign: TextAlign.justify, // Align the text to justify (or use other alignment values)
              ),
              Text(
                'After Uploading wait for an response from Admin side. Admin will procees the request and send the response message.If the reason is valid and after verifing complaint copy the photo or video will be deleted else request will be not accepted \n ',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  color: Colors.black, // Adjust the text color as needed
                ),
                textAlign: TextAlign.justify, // Align the text to justify (or use other alignment values)
              ),
              Text(
                'warning!\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16, // Adjust the font size as needed
                  color: Colors.black, // Adjust the text color as needed
                ),
                textAlign: TextAlign.justify, // Align the text to justify (or use other alignment values)
              ),
              Text(
                "If the request accepted then the will be deleted ,didn't able to cancel request.If the image or video are deleted,then we only have the copy of photo or video as hash value. " ,
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  color: Colors.black, // Adjust the text color as needed
                ),
                textAlign: TextAlign.justify, // Align the text to justify (or use other alignment values)
              )
            ],
          ),
          ),
        ),
      ),
      ]
      ),
      drawer: Drawer(
        // Define your drawer content here
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('User Name'), accountEmail: Text('userEmail'),
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.white),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent, // Replace with your desired color
              ),
            ),
            ListTile(
              title: Text('User Info'),
              leading: Icon(Icons.person),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text('DoxWipe info'),
              leading: Icon(Icons.privacy_tip),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              title: Text('Contact us'),
              leading: Icon(Icons.phone),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              title: Text('Email us'),
              leading: Icon(Icons.email),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              title: Text('Report'),
              leading: Icon(Icons.report),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            // Add more items as needed
          ],
        ),
      ),
    );
  }
}
