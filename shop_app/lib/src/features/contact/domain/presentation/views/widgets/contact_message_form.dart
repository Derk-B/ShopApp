import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shop_app/custom_imports/app_localizations.dart';

class ContactMessageForm extends StatelessWidget {
  ContactMessageForm({super.key});

  final _formKey = GlobalKey<FormState>();

  InputDecoration _defaultInputDecoration(String hintText) {
    return InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
          child: Form(
            key: _formKey,
            child: FormColumn(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppLocalizations.of(context)!
                          .contact_message_form_validation_name;
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: _defaultInputDecoration(
                      AppLocalizations.of(context)!
                          .contact_message_form_name_default),
                ),
                TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!
                            .contact_message_form_validation_email;
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: _defaultInputDecoration(
                        AppLocalizations.of(context)!
                            .contact_message_form_email_default)),
                TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!
                            .contact_message_form_validation_message;
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    decoration: _defaultInputDecoration(
                        AppLocalizations.of(context)!
                            .contact_message_form_message_default)),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      var url = Uri.http("localhost:8081", "/");
                      var response =
                          await http.post(url, body: {'email': "some-email"});
                      print('Response body: ${response.body}');
                      print('Response status: ${response.statusCode}');
                    }
                  },
                  child: Text(AppLocalizations.of(context)!
                      .contact_message_form_submit),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FormColumn extends StatelessWidget {
  final List<Widget> children;
  const FormColumn({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        children.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: children[index],
        ),
      ),
    );
  }
}
