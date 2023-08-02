import 'package:flutter/material.dart';

import './src/config/router/app_router.dart';
void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

// assuing this is the root widget of your App 
class MyApp extends StatelessWidget {

  @override            
  Widget build(BuildContext context){
    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      title: 'Flutter Demo',
      theme: ThemeData(),
    );
  }            
}