import 'package:flutter/material.dart';
import './../widgets/navigation_drawer.dart';

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Center(child: Text('My first app')),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(50),
              //space inside container
              margin: const EdgeInsets.fromLTRB(15, 25, 30, 30),
              //space outside container
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.blue.shade700),
                  borderRadius: BorderRadius.circular(80)
              ),
              child: Text(
                  'Hello World', style: TextStyle(color: Colors.green[900])),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              color: Colors.red,
              child: const Text('Second'),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              color: Colors.purple,
              child: const Text('Third')
            ),
            ElevatedButton(
              // Within the `FirstScreen` widget
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Show me the rows and icons'),
            ),
          ]
      ),
      backgroundColor: Colors.red[50],
    );
  }
}

