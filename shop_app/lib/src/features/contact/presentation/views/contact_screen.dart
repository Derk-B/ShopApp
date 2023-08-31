import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/custom_imports/app_localizations.dart';
import 'package:shop_app/src/features/contact/presentation/blocs/message_form_bloc/message_form_bloc.dart';
import 'package:shop_app/src/features/contact/presentation/views/widgets/contact_message_form.dart';
import 'package:shop_app/src/features/contact/presentation/views/widgets/contact_message_form_error.dart';
import 'package:shop_app/src/features/contact/presentation/views/widgets/contact_message_form_loading.dart';
import 'package:shop_app/src/features/contact/presentation/views/widgets/contact_message_form_success.dart';
import 'package:shop_app/src/features/contact/presentation/views/widgets/contact_options_list.dart';
import 'package:shop_app/src/shared/presentation/components/sa_default_scaffold.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SADefaultScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.contact_screen_title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const ContactOptionsList(),
              const SizedBox(height: 16.0),
              Text(
                AppLocalizations.of(context)!.contact_screen_send_message,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              MultiBlocProvider(
                providers: [
                  BlocProvider(
                      create: (context) =>
                          MessageFormBloc()..add(MessageFormEdit()))
                ],
                child: BlocBuilder<MessageFormBloc, MessageFormState>(
                  builder: (context, state) {
                    if (state is MessageFormEditing) {
                      return ContactMessageForm();
                    }

                    if (state is MessageFormSubmitting) {
                      return const ContactMessageFormLoading();
                    }

                    if (state is MessageFormSuccess) {
                      return const ContactMessageFormSuccess();
                    }

                    return const ContactMessageFormError();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
