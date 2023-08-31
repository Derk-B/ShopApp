class ContactMessageDTO {
  final String name;
  final String email;
  final String message;

  const ContactMessageDTO(this.name, this.email, this.message);

  Map toJson() => {
        'name': name,
        'email': email,
        'message': message,
      };
}
