import 'package:flutter/material.dart';
import 'package:doxwipe/doxwipe.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: adhaarverification(),
    );
  }
}

class adhaarverification extends StatelessWidget {
  const adhaarverification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
        title: Text('Adhaar Verification'),
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
          width: 300,
         height: 600,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80.0,
                  ),
                  TextField(
                    decoration: new InputDecoration(
                        labelText: 'Enter Adhaar Number',
                        labelStyle: TextStyle(
                          color: Colors.black, // Color of the label text
                        ),
                        icon: new Icon(Icons.person,color: Colors.black)
                    ),
                  ),
                  SizedBox(height: 75.0,),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return ReloadingAndVerifiedScreen();
                      }
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),// Remove default padding
                    ),
                    child: Text('Verify'),
                  ),

                ],
         ),
        ),
      ),
    ]));
  }
}


class ReloadingAndVerifiedScreen extends StatefulWidget {
  @override
  _ReloadingAndVerifiedScreenState createState() =>
      _ReloadingAndVerifiedScreenState();
}

class _ReloadingAndVerifiedScreenState
    extends State<ReloadingAndVerifiedScreen> {
  bool isReloading = true;

  @override
  void initState() {
    super.initState();
    // Simulate a delay to reload the data
    Future.delayed(Duration(seconds: 3), () {
      // After the delay, switch to the verified screen
      setState(() {
        isReloading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
        title: Text( 'Phone Number Verification'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isReloading
                ? CircularProgressIndicator()
                : Column(
              children: [
                SizedBox(height: 150),
                Text('Phone number Verified successfully!',style: TextStyle(color: Colors.black),),
                SizedBox(height: 150),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Userdetails();
                    }
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),// Remove default padding
                  ),
                  child: Text('  Next  '),
                ),// Add some spacing
              ],
            ),
          ],
        ),
      ),
    ]));
  }

}
class Userdetails extends StatelessWidget {
  const Userdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
        title: Text( 'User Details'),
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
          width: 300,
          height: 600,
          child: SingleChildScrollView(
            child:Container(
              width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 150.0,
                  width: 25.0,
                ),
                TextField(
                  decoration: new InputDecoration(
                      labelText: 'Enter Name',
                      labelStyle: TextStyle(
                        color: Colors.black, // Color of the label text
                      ),
                      icon: new Icon(Icons.email,color: Colors.black,)
                  ),
                ),

                TextField(
                  decoration: new InputDecoration(
                      labelText: 'date of birth',
                      labelStyle: TextStyle(
                        color: Colors.black, // Color of the label text
                      ),
                      icon: new Icon(Icons.email,color: Colors.black,)
                  ),
                ),
                TextField(
                  decoration: new InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.black, // Color of the label text
                      ),
                      icon: new Icon(Icons.email,color: Colors.black,)
                  ),
                ),
                TextField(
                  decoration: new InputDecoration(
                      labelText: 'password',
                      labelStyle: TextStyle(
                        color: Colors.black, // Color of the label text
                      ),
                      icon: new Icon(Icons.email,color: Colors.black,)
                  ),
                ),
                SizedBox(
                  height: 150.0,
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return doxwipe();
                    }
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),// Remove default padding
                  ),
                  child: Text('  REGISTER  '),
                ),

               ],
            ),
          ),
          ),
        ),
      ),
    ]));
  }
}



