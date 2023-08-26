import 'package:flutter/material.dart';

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
                      return "Please enter your name";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: _defaultInputDecoration("Naam"),
                ),
                TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your email";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: _defaultInputDecoration("E-mail")),
                TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a message";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: _defaultInputDecoration("Bericht")),
                ElevatedButton(
                  onPressed: () {
                    bool? result = _formKey.currentState?.validate();

                    if (result == null) {}
                  },
                  child: const Text("Verzend"),
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
