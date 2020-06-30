import 'package:google_place/src/models/lat_lon.dart';

class QueryAutocompleteParameters {
  static Map<String, String> createParameters(
    String apiKEY,
    String input,
    int offset,
    LatLon location,
    int radius,
    String language,
  ) {
    String result = input.trimRight();
    result = result.trimLeft();
    Map<String, String> queryParameters = {
      'input': result,
      'key': apiKEY,
    };

    if (location != null) {
      var item = {
        'location': '${location.latitude},${location.longitude}',
      };
      queryParameters.addAll(item);
    }

    if (offset != null) {
      var item = {
        'offset': offset.toString(),
      };
      queryParameters.addAll(item);
    }

    if (radius != null) {
      var item = {
        'radius': radius.toString(),
      };
      queryParameters.addAll(item);
    }

    if (language != null && language != '') {
      var item = {
        'language': language,
      };
      queryParameters.addAll(item);
    }
    return queryParameters;
  }
}
