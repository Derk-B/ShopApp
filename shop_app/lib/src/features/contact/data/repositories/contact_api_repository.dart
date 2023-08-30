import 'package:shop_app/src/features/contact/data/interfaces/contact_api_interface.dart';
import 'package:shop_app/src/features/contact/data/models/contact_message_dto.dart';
import 'package:shop_app/src/features/contact/data/models/contact_message_dto_converter.dart';
import 'package:shop_app/src/features/contact/domain/entities/contact_message_entity.dart';
import 'package:shop_app/src/features/contact/domain/repositories/abstract_contact_api_repository.dart';

class ContactApiRepository extends AbstractContactApiRepository {
  @override
  Future<int> sendMessage(ContactMessageEntity entity) async {
    ContactMessageDTO contactMessageDTO =
        ContactMessageDtoConverter.convert(entity);

    return await ContactApiInterface.postMessage(contactMessageDTO);
  }
}
