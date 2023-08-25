import 'package:flutter/material.dart';
import 'package:shop_app/src/shared/presentation/components/sa_default_scaffold.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SADefaultScaffold(
        body: Center(
      child: Text("Contactscreen"),
    ));
  }
}
