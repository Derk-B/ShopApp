import 'package:flutter/material.dart';
import 'package:shop_app/src/features/contact/domain/presentation/views/widgets/contact_message_form.dart';
import 'package:shop_app/src/features/contact/domain/presentation/views/widgets/contact_options_list.dart';
import 'package:shop_app/src/shared/presentation/components/sa_default_scaffold.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SADefaultScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Neem contact op",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const ContactOptionsList(),
            const SizedBox(height: 16.0),
            Text(
              "Stuur een bericht",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ContactMessageForm(),
          ],
        ),
      ),
    );
  }
}
