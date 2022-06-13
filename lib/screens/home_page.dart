import 'package:flutter/material.dart';
import './../widgets/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Center(child: Text('Home')),
      backgroundColor: Colors.blue.shade700,
    ),
    drawer: const NavigationDrawer(),
  );
}


