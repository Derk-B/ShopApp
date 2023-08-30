import 'package:shop_app/src/features/contact/domain/entities/contact_message_entity.dart';

abstract class AbstractContactApiRepository {
  Future<int> sendMessage(ContactMessageEntity entity);
}
