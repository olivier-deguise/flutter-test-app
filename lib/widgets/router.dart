import 'package:flutter/material.dart';
import '../screens/home_page.dart';
import '../screens/first_screen.dart';
import '../screens/second_screen.dart';
import '../screens/favorites.dart';
import '../screens/user_page.dart';
import '../utilities/constants.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case firstScreenRoute:
        return MaterialPageRoute(builder: (_) => const MyFirstScreen());
      case secondScreenRoute:
        return MaterialPageRoute(builder: (_) => const MySecondScreen());
      case favoritesRoute:
        return  MaterialPageRoute(builder: (_) => const FavouritesPage());
      case userPageRoute:
        return  MaterialPageRoute(builder: (_) => const UserPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}

