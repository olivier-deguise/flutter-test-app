import 'package:flutter/material.dart';
import './../widgets/navigation_drawer.dart';

class MySecondScreen extends StatelessWidget {
  const MySecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Center(child: Text('My first app')),
      ),
      // body: Center(child: Text('Hello World', style: TextStyle(color: Colors.green[900]))),
      body: Container(
        color: Colors.blue,
        height: 300,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('First Widget'),
              const Text('Second Widget', style: TextStyle(backgroundColor: Colors.orange),),
              const Text('Third Widget'),
              IconButton(
                tooltip: 'Create new email',
                iconSize: 40,
                onPressed: () { print("Icon button is pressed"); },
                icon: const Icon(
                    Icons.sunny,
                    color: Colors.yellow
                ),
              ),
              IconButton(
                tooltip: 'Go Back!',
                iconSize: 40,
                onPressed: () {
                  // Navigate back to the first screen by popping the current route
                  // off the stack.
                  Navigator.pop(context); },
                icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.cyanAccent
                ),
              ),
            ]
        ),
      ),
      backgroundColor: Colors.red[50],
    );

  }
}

