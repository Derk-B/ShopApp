import 'package:flutter/material.dart';
import 'package:shop_app/src/features/contact/presentation/views/widgets/contact_message_form_layout.dart';

class ContactMessageFormLoading extends StatelessWidget {
  const ContactMessageFormLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContactMessageFormLayout(
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
