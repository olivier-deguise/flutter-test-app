import 'package:flutter/material.dart';
import './../widgets/navigation_drawer.dart';

enum FavoriteMethod { flutter, kotlin, swift, reactNative }

extension ParseToString on FavoriteMethod? {
  String toShortString() {
    return toString().split('.').last;
  }
}

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPage();
}
  class _FavouritesPage extends State<FavouritesPage>{
    FavoriteMethod? _method;
    bool _pressed = false;

    Widget build(BuildContext context) {
      return Scaffold(
        drawer: const NavigationDrawer(),
        appBar: AppBar(
          title: const Text('Favorites'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text('What do you prefer for App Development?', style: TextStyle(fontSize:18),),
            ),
            RadioListTile(
              title: const Text('Flutter'),
              value: FavoriteMethod.flutter,
              groupValue: _method,
              onChanged: (FavoriteMethod? value) {
                setState(() {
                  _pressed = false;
                  _method = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('Kotlin'),
              value: FavoriteMethod.kotlin,
              groupValue: _method,
              onChanged: (FavoriteMethod? value) {
                setState(() {
                  _pressed = false;
                  _method = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('Swift'),
              value: FavoriteMethod.swift,
              groupValue: _method,
              onChanged: (FavoriteMethod? value) {
                setState(() {
                  _pressed = false;
                  _method = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('React Native'),
              value: FavoriteMethod.reactNative,
              groupValue: _method,
              onChanged: (FavoriteMethod? value) {
                setState(() {
                  _pressed = false;
                  _method = value;
                });
              },
            ),
            const SizedBox(height: 40),
            Center(child: ElevatedButton(
                child: const Text('SUBMIT'),
                onPressed: () {
                  setState(() {
                    _pressed = true;
                  });
                } )),
            _pressed ? Padding(
              padding: const EdgeInsets.all(12),
              child: Text('Your favorite app development is: ${_method.toShortString()}', style: const TextStyle(fontSize: 18, color: Colors.purple),),
            ) : const Text(''),
          ],
        ),
      );
    }


}
