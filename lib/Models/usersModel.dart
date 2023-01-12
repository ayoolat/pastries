class UserModel {
  const UserModel(
      {required this.id,
      required this.userId,
      required this.email,
      required this.firstName,
      required this.lastName});

  final int id;
  final String userId;
  final String email;
  final String firstName;
  final String lastName;
}
