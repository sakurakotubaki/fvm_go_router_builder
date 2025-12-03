import 'package:flutter/material.dart';
import 'package:fvm_go_router_builder/presentation/router/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          spacing: 16.0,
          mainAxisAlignment: .start,
          children: [
            Text('This is the Home Page'),
            ElevatedButton(
              onPressed: () {
                // go: Stack remove
                // push: Stack keep
                const NextRoute().push(context);
              },
              child: const Text('Go to Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}