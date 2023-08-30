import 'dart:convert' show utf8;
import 'dart:io' show HttpRequest, HttpStatus;

import 'package:portal/annotations/mappers.dart';

import '../Models/contact_message_dto.dart';
import '../Services/contact_message_service.dart';

class ContactApi {
  @PostMapping("/sendmessage")
  sendEmail(HttpRequest request) async {
    request.response.headers.add("Access-Control-Allow-Origin", "*");
    request.response.headers.add("Access-Control-Allow-Methods", "GET");

    Map<String, String> requestBody =
        Uri.splitQueryString(await utf8.decodeStream(request));

    String? email = requestBody['email'];
    String? name = requestBody['name'];
    String? message = requestBody['message'];

    if (email == null || name == null || message == null) {
      request.response
        ..statusCode = HttpStatus.internalServerError
        ..write("Incorrect formdata")
        ..close();

      return;
    }

    ContactMessageDto contactMessageDto =
        ContactMessageDto(name, email, message);

    ContactMessageService service = ContactMessageService();
    Exception? exception = await service.sendMessage(contactMessageDto);

    print(exception);

    if (exception == null) {
      request.response
        ..statusCode = HttpStatus.ok
        ..write("Message sent")
        ..close();
    } else {
      request.response
        ..statusCode = HttpStatus.internalServerError
        ..write("Server error, mailer did not send email!")
        ..close();
    }
  }
}
