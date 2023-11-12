import 'package:flutter/material.dart';
import 'forgot_password.dart'; 

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           const Text(
              'Login to Your Account',
              style: TextStyle(fontSize: 24),
            ),
           const SizedBox(height: 20),
           const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                
              },
                style: ButtonStyle(
           backgroundColor: MaterialStateProperty.all<Color>
                  (Colors.grey), 
                       ),

              
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all
              <Color>(Colors.grey), 
              ),
              child: Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}
