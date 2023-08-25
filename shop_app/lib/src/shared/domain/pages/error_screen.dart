import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Something went wrong!",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Text("Reload the app, otherwise contact the company"),
          ],
        ),
      ),
    );
  }
}
