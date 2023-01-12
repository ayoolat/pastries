class LoginModel {
  const LoginModel({
    required this.firebaseToken,
    required this.refreshToken,
    required this.expiresIn,
    required this.created,
    required this.email,
    required this.userId,
  });

  final String firebaseToken;
  final String refreshToken;
  final int expiresIn;
  final DateTime created;
  final String email;
  final String userId;
}
