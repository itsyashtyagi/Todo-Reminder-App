class LoginModel {
  final bool success;
  final String message;
  final LoginData data;

  LoginModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: LoginData.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {'success': success, 'message': message, 'data': data.toJson()};
  }
}

class LoginData {
  final int userTypeId;
  final int userId;

  LoginData({required this.userTypeId, required this.userId});

  factory LoginData.fromJson(Map<String, dynamic> json) {
    return LoginData(
      userTypeId: json['user_type_id'] as int,
      userId: json['user_id'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {'user_type_id': userTypeId, 'user_id': userId};
  }
}
