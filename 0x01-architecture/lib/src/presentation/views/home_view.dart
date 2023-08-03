import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:oktoast/oktoast.dart';


@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                child: Text('Show News'),
                onPressed: () {
                  context.router.navigateNamed('/news');
                },
              ),
              SizedBox(width: 10),
              ElevatedButton(
                child: Text('Show users'),
                onPressed: () {
                  context.router.navigateNamed('/users');
                },
              ),
              SizedBox(width: 10),
              ElevatedButton(
                child: Text('Native Toast'),
                onPressed: () {
                  showToast('native oktoast');
                },
              ),
              SizedBox(width: 10),
              ElevatedButton(
                child: Text('Style Toast'),
                onPressed: () {
                  showToastWidget(Text('hello oktoast'));
                },
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}