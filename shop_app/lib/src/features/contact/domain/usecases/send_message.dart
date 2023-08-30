import 'package:shop_app/src/features/contact/data/repositories/contact_api_repository.dart';
import 'package:shop_app/src/features/contact/domain/entities/contact_message_entity.dart';
import 'package:shop_app/src/features/contact/domain/repositories/abstract_contact_api_repository.dart';
import 'package:shop_app/src/shared/domain/usecases/usecase.dart';

class SendMessage extends UseCase<Future<int>> {
  AbstractContactApiRepository contactApiRepository = ContactApiRepository();
  final ContactMessageEntity entity;

  SendMessage(this.entity);

  @override
  Future<int> call() async {
    return await contactApiRepository.sendMessage(entity);
  }
}
