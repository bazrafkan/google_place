import 'package:google_place/src/models/lat_lng.dart';

class AutocompleteParameters {
  static Map<String, String> createParameters(
    String apiKEY,
    String input,
    String sessionToken,
    int offset,
    LatLng origin,
    LatLng location,
    int radius,
    String language,
    String types,
    List<String> components,
    bool strictbounds,
  ) {
    String result = input.trimRight();
    result = result.trimLeft();
    Map<String, String> queryParameters = {
      'input': result,
      'key': apiKEY,
    };

    String componentsQuery;
    if (components != null) {
      for (int i = 0; i < components.length; i++) {
        componentsQuery += 'country:${components[i]}';
        if (i + 1 != components.length) {
          componentsQuery += '|';
        }
      }
    }

    if (origin != null) {
      var item = {
        'origin': '${origin.latitude},${origin.latitude}',
      };
      queryParameters.addAll(item);
    }

    if (location != null) {
      var item = {
        'location': '${location.latitude},${location.latitude}',
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
        'strictbounds': 'strictbounds',
      };
      queryParameters.addAll(item);
    }

    if (componentsQuery != null && componentsQuery != '') {
      var item = {
        'components': componentsQuery,
      };
      queryParameters.addAll(item);
    }
    return queryParameters;
  }
}
