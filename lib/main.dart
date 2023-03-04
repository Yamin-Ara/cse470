// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health App'),
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
      ),
      body: Column(
        children: [
          AboutSection,
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  const snackBar =
                      SnackBar(content: const Text('Sign up form coming soon'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Forgot Password'),
        icon: const Icon(
          Icons.assistant,
          color: Colors.amber,
          size: 30.0,
        ),
        backgroundColor: Colors.purple,
      ),
    );
  }

  Widget AboutSection = Container(
      padding: EdgeInsets.all(80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'About Us',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Our mission is to provide high-quality healthcare services to our customers.',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.normal,
              letterSpacing: 2.0,
              color: Colors.blueGrey.shade900,
            ),
          ),
          SizedBox(height: 16),
          Container()
        ],
      ));
}
