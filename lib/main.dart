import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import './widgets/router.dart';

void main() {
  runApp(const MaterialApp(
    title: 'My first App',
    debugShowCheckedModeBanner: false,
    initialRoute: homeRoute,
    onGenerateRoute: AppRouter.generateRoute,
  ));
}

