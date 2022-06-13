import 'package:flutter/material.dart';
import './../widgets/navigation_drawer.dart';

class UserPage extends StatelessWidget{
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawer(),
    appBar: AppBar(
      title: const Text('John Doe'),
      backgroundColor: Colors.blue.shade700,
    ),
    body: Image.network('https://images.unsplash.com/photo-1517849845537-4d257902454a')
  );
}
