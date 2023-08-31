import 'package:http/http.dart';
import 'package:shop_app/src/features/contact/data/models/contact_message_dto.dart';

class ContactApiInterface {
  static Future<int> postMessage(ContactMessageDTO message) async {
    var url = Uri.http("localhost:8081", "/contact/sendmessage");
    Response response = await post(
      url,
      body: message.toJson(),
    );

    return response.statusCode;
  }
}
