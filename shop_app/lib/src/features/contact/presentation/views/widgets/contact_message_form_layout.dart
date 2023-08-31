import 'package:flutter/material.dart';

class ContactMessageFormLayout extends StatelessWidget {
  final Widget child;
  const ContactMessageFormLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Card(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
