import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen app'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Welcome",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 32),
        TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16.0),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 25),
        Text(
          "Forgot Password?",
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xff0501e0), fontSize: 15),
        ),
        SizedBox(height: 25),
        ElevatedButton(
          onPressed: () {},
          child: Text('Login'),
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "don't have account?",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
            SizedBox(width: 16), // Add spacing between the texts
            Text(
              "Create Account",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}
