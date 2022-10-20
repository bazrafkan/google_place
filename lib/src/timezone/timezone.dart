import '../models/location.dart';
import '../utils/network_utility.dart';
import 'timezone_response.dart';

class TimeZone {
  static final _authority = 'maps.googleapis.com';
  static final _unencodedPath = 'maps/api/timezone/json';
  final String apiKEY;
  final Map<String, String> headers;
  final String? proxyUrl;

  TimeZone(this.apiKEY, this.headers, this.proxyUrl);

  Future<TimeZoneResponse?> getTimezone(Location? location) async {
    var queryParameters = _createParameters(apiKEY, location);
    var uri = Uri.https(_authority, _unencodedPath, queryParameters);
    var response = await NetworkUtility.fetchUrl(uri, headers: headers);
    if (response != null) {
      return TimeZoneResponse.parseTimeZoneResult(response);
    }
    return null;
  }

  Map<String, String> _createParameters(String apiKEY, Location? location) {
    Map<String, String> queryParameters = {
      'key': apiKEY,
      'timestamp': (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString()
    };
    if (location != null) {
      var item = {
        'location': '${location.lat},${location.lng}',
      };
      queryParameters.addAll(item);
    }
    return queryParameters;
  }
}
