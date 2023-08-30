import 'package:dotenv/dotenv.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import '../Models/contact_message_dto.dart';

class ContactMessageService {
  Future<Exception?> sendMessage(ContactMessageDto contactMessageDto) async {
    final env = DotEnv(includePlatformEnvironment: true)..load();

    final String companyEmail =
        env.getOrElse('EMAIL_COMPANY_ADDRESS', () => "");
    final String username = env.getOrElse('EMAIL_ADDRESS', () => "");
    final String password = env.getOrElse('EMAIL_PASSWORD', () => "");

    final String subject = "Bericht van ${contactMessageDto.name}";
    final String content =
        "<h1 style='font-size:20px'>Bericht van ${contactMessageDto.name}:</h1> \n\n${contactMessageDto.message}";
    final smtpServer = gmail(username, password);

    final message = Message()
      ..from = Address(username)
      ..recipients.add(companyEmail)
      ..subject = subject
      ..html = content;

    try {
      await send(message, smtpServer, timeout: Duration(seconds: 10));
    } on MailerException catch (e) {
      return e;
    } on Exception catch (e) {
      return e;
    }
    return null;
  }
}
