import 'package:google_place/src/models/input_type.dart';
import 'package:google_place/src/models/location.dart';
import 'package:google_place/src/models/locationbias.dart';
import 'package:google_place/src/models/rank-by.dart';

class SearchParameters {
  static Map<String, String> createFindPlaceParameters(
    String apiKEY,
    String input,
    InputType inputType,
    String language,
    String fields,
    Locationbias locationbias,
  ) {
    String result = input.trimRight();
    result = result.trimLeft();
    Map<String, String> queryParameters = {
      'input': result,
      'key': apiKEY,
      'inputtype': inputType == InputType.TextQuery
          ? 'textquery'
          : inputType == InputType.PhoneNumber ? 'phonenumber' : 'textquery',
    };

    if (language != null && language != '') {
      var item = {
        'language': language,
      };
      queryParameters.addAll(item);
    }

    if (fields != null && fields != '') {
      var item = {
        'fields': fields,
      };
      queryParameters.addAll(item);
    }

    if (locationbias != null) {
      String value;
      if (locationbias.ipbias != null && locationbias.ipbias) {
        value = 'ipbias';
      }
      if (locationbias.point != null) {
        value =
            'point:${locationbias.point.latitude},${locationbias.point.longitude}';
      }
      if (locationbias.circular != null) {
        value =
            'circle:${locationbias.circular.radius}@${locationbias.circular.latLng.latitude},${locationbias.circular.latLng.longitude}';
      }
      if (locationbias.rectangular != null) {
        value =
            'rectangle:${locationbias.rectangular.southWest.latitude},${locationbias.rectangular.southWest.longitude}|${locationbias.rectangular.northEast.latitude},${locationbias.rectangular.northEast.longitude}';
      }
      var item = {
        'locationbias': value,
      };
      queryParameters.addAll(item);
    }
    return queryParameters;
  }

  static Map<String, String> createNearBySearchParameters(
    apiKEY,
    Location location,
    int radius,
    String keyword,
    String language,
    int minprice,
    int maxprice,
    String name,
    bool opennow,
    RankBy rankby,
    String type,
    String pagetoken,
  ) {
    Map<String, String> queryParameters = {
      'location': '${location.lat},${location.lng}',
      'key': apiKEY,
      'radius': radius.toString(),
    };

    if (keyword != null && keyword != '') {
      var item = {
        'keyword': keyword,
      };
      queryParameters.addAll(item);
    }

    if (language != null && language != '') {
      var item = {
        'language': language,
      };
      queryParameters.addAll(item);
    }

    if (minprice != null) {
      var item = {
        'minprice': minprice.toString(),
      };
      queryParameters.addAll(item);
    }

    if (maxprice != null) {
      var item = {
        'maxprice': maxprice.toString(),
      };
      queryParameters.addAll(item);
    }

    if (name != null && name != '') {
      var item = {
        'name': name,
      };
      queryParameters.addAll(item);
    }

    if (opennow != null && opennow) {
      var item = {
        'opennow': 'opennow',
      };
      queryParameters.addAll(item);
    }

    if (rankby != null) {
      String value;
      if (rankby == RankBy.Prominence) {
        value = 'prominence';
      }
      if (rankby == RankBy.Distance) {
        value = 'distance';
      }

      var item = {
        'rankby': value,
      };
      queryParameters.addAll(item);
    }

    if (type != null && type != '') {
      var item = {
        'type': type,
      };
      queryParameters.addAll(item);
    }

    if (pagetoken != null && pagetoken != '') {
      var item = {
        'pagetoken': pagetoken,
      };
      queryParameters.addAll(item);
    }

    return queryParameters;
  }

  static Map<String, String> createTextSearchParameters(
    apiKEY,
    String query,
    String region,
    Location location,
    int radius,
    String language,
    int minprice,
    int maxprice,
    bool opennow,
    String type,
    String pagetoken,
  ) {
    String result = query.trimRight();
    result = result.trimLeft();
    Map<String, String> queryParameters = {
      'query': result,
      'key': apiKEY,
    };

    if (region != null && region != '') {
      var item = {
        'region': region,
      };
      queryParameters.addAll(item);
    }

    if (location != null) {
      var item = {
        'location': '${location.lat},${location.lng}',
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

    if (minprice != null) {
      var item = {
        'minprice': minprice.toString(),
      };
      queryParameters.addAll(item);
    }

    if (maxprice != null) {
      var item = {
        'maxprice': maxprice.toString(),
      };
      queryParameters.addAll(item);
    }

    if (opennow != null && opennow) {
      var item = {
        'opennow': 'opennow',
      };
      queryParameters.addAll(item);
    }

    if (type != null && type != '') {
      var item = {
        'type': type,
      };
      queryParameters.addAll(item);
    }

    if (pagetoken != null && pagetoken != '') {
      var item = {
        'pagetoken': pagetoken,
      };
      queryParameters.addAll(item);
    }

    return queryParameters;
  }
}
