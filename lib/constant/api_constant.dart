import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstant {
  static String baseUrl = dotenv.env['API_BASE_URL'] ?? "";
  static const String loginEndpoint = "user/login";
}
