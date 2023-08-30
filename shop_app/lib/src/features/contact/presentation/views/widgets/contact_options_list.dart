import 'package:flutter/material.dart';
import 'package:shop_app/src/features/contact/presentation/views/widgets/contact_option.dart';

class ContactOptionsList extends StatelessWidget {
  const ContactOptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: [
            ContactOption(icon: Icons.phone, label: "06-12345678"),
            ContactOption(icon: Icons.mail, label: "test@mail.com"),
            ContactOption(
                icon: Icons.navigation,
                label: "132 My Street,\nKingston, New York 12401"),
          ]),
        ),
      ),
    );
  }
}
