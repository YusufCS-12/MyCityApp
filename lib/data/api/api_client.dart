import 'package:http/http.dart' as http;

class ApiClient {
  static Future<http.Response> getCurrencies() {
    return http.get('https://finans.truncgil.com/today.json');
  }
}
