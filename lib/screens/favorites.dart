import 'package:flutter/material.dart';
import './../widgets/navigation_drawer.dart';

class FavouritesPage extends StatelessWidget{
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawer(),
    appBar: AppBar(
      title: const Text('Favorites'),
      backgroundColor: Colors.green,
    ),
  );
}
