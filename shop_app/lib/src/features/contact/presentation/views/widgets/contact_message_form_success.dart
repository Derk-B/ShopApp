import 'package:flutter/material.dart';
import 'package:shop_app/custom_imports/app_localizations.dart';
import 'package:shop_app/src/features/contact/presentation/views/widgets/contact_message_form_layout.dart';

class ContactMessageFormSuccess extends StatelessWidget {
  const ContactMessageFormSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return ContactMessageFormLayout(
      child: Text(
        AppLocalizations.of(context)!.contact_message_form_status_success,
        textAlign: TextAlign.center,
      ),
    );
  }
}
