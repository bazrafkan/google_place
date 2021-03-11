import 'package:google_place/google_place.dart';
import 'package:http/http.dart' as http;

/// The Network Utility
class NetworkUtility {
  static Future<String?> fetchUrl(
    Uri uri, {
    Map<String, String>? headers,
  }) async {
    try {
      final response =
          await http.get(uri, headers: headers).timeout(GooglePlace.timeout);
      if (response.statusCode == 200) {
        return response.body;
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
