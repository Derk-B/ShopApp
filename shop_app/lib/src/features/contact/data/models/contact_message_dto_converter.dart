import 'package:shop_app/src/features/contact/data/models/contact_message_dto.dart';
import 'package:shop_app/src/features/contact/domain/entities/contact_message_entity.dart';

class ContactMessageDtoConverter {
  static ContactMessageDTO convert(ContactMessageEntity entity) {
    return ContactMessageDTO(entity.name, entity.email, entity.message);
  }
}
