import 'package:flutter/material.dart';
import 'register.dart';
import 'login.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:  Colors.grey,

        visualDensity: VisualDensity.adaptivePlatformDensity, 
      ),

      home: HomeScreen('Ben Motors'),
    );
    
  }
}
class HomeScreen extends StatelessWidget {
  HomeScreen(String s);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Ben Motors'),

      ),
body: Stack(
  children: <Widget>[
    //Background Image
    Positioned.fill(
      child: Image.asset(
        'images/ben.jpg',
        fit: BoxFit.contain,
      ),
      ),
  
  Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                WideButton(
                  label: 'Register',
                  
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                ),
                SizedBox(height: 20),
                WideButton(
                  label: 'Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WideButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  WideButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey, 
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text( 
            label,
            style: TextStyle(
            color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

     
 