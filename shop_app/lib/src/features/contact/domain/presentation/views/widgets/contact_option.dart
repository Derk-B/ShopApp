import 'package:flutter/material.dart';

class ContactOption extends StatelessWidget {
  final IconData icon;
  final String label;
  const ContactOption({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(children: [
        Icon(icon),
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(
            label,
            maxLines: 2,
          ),
        ),
      ]),
    );
  }
}
