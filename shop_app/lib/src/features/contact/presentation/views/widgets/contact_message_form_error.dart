import 'package:flutter/material.dart';
import 'package:shop_app/custom_imports/app_localizations.dart';
import 'package:shop_app/src/features/contact/presentation/views/widgets/contact_message_form_layout.dart';

class ContactMessageFormError extends StatelessWidget {
  const ContactMessageFormError({super.key});

  @override
  Widget build(BuildContext context) {
    return ContactMessageFormLayout(
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.contact_message_form_status_error,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
