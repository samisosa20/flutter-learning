import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';


@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            context.router.navigateNamed('/page');
          },
        ),
      ),
    );
  }
}