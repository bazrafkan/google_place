import 'package:google_place/src/models/component.dart';
import 'package:google_place/src/models/lat_lon.dart';

class AutocompleteParameters {
  static Map<String, String> createParameters(
    String apiKEY,
    String input,
    String sessionToken,
    int offset,
    LatLon origin,
    LatLon location,
    int radius,
    String language,
    String types,
    List<Component> components,
    bool strictbounds,
  ) {
    String result = input.trimRight();
    result = result.trimLeft();
    Map<String, String> queryParameters = {
      'input': result,
      'key': apiKEY,
    };

    if (components != null && components.length > 0) {
      String result = '';
      for (int i = 0; i < components.length; i++) {
        result += '${components[i].component}:${components[i].value}';
        if (i + 1 != components.length) {
          result += '|';
        }
      }
      var item = {
        'components': result,
      };
      queryParameters.addAll(item);
    }

    if (origin != null) {
      var item = {
        'origin': '${origin.latitude},${origin.longitude}',
      };
      queryParameters.addAll(item);
    }

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

    if (sessionToken != null && sessionToken != '') {
      var item = {
        'sessionToken': sessionToken,
      };
      queryParameters.addAll(item);
    }

    if (language != null && language != '') {
      var item = {
        'language': language,
      };
      queryParameters.addAll(item);
    }

    if (types != null && types != '') {
      var item = {
        'types': types,
      };
      queryParameters.addAll(item);
    }

    if (strictbounds) {
      var item = {
        'strictbounds': strictbounds.toString(),
      };
      queryParameters.addAll(item);
    }

    return queryParameters;
  }
}
