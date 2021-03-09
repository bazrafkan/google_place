import 'package:google_place/src/autocomplete/autocomplete_response.dart';
import 'package:google_place/src/models/component.dart';
import 'package:google_place/src/models/lat_lon.dart';
import 'package:google_place/src/utils/network_utility.dart';

class Autocomplete {
  static final _authority = 'maps.googleapis.com';
  static final _unencodedPath = 'maps/api/place/autocomplete/json';
  final String apiKEY;

  Autocomplete(this.apiKEY);

  /// The Place Autocomplete service is a web service that returns place predictions in response
  ///  to an HTTP request. The request specifies a textual search string and optional geographic
  /// bounds. The service can be used to provide autocomplete functionality for text-based
  /// geographic searches, by returning places such as businesses, addresses and points of
  /// interest as a user types.
  ///
  /// [input] Required parameters - The text string on which to search. The Place Autocomplete
  /// service will return candidate matches based on this string and order results based on
  ///  their perceived relevance.
  ///
  /// [sessionToken] Optional parameters - A random string which identifies an autocomplete
  /// session for billing purposes. If this parameter is omitted from an autocomplete request,
  /// the request is billed independently. See the pricing sheet for details.
  ///
  /// [offset] Optional parameters - The position, in the input term, of the last character
  /// that the service uses to match predictions. For example, if the input is 'Google' and the
  /// offset is 3, the service will match on 'Goo'. The string determined by the offset is
  /// matched against the first word in the input term only. For example, if the input term is
  /// 'Google abc' and the offset is 3, the service will attempt to match against 'Goo abc'.
  /// If no offset is supplied, the service will use the whole term. The offset should generally
  /// be set to the position of the text caret.
  ///
  /// [origin] Optional parameters - The origin point from which to calculate straight-line
  /// distance to the destination (returned as distance_meters). If this value is omitted,
  /// straight-line distance will not be returned. Must be specified as latitude,longitude.
  ///
  /// [location] Optional parameters - The point around which you wish to retrieve place
  /// information. Must be specified as latitude,longitude.
  ///
  /// [radius] Optional parameters - The distance (in meters) within which to return place results.
  ///  Note that setting a radius biases results to the indicated area, but may not fully restrict
  /// results to the specified area. See Location Biasing and Location Restrict below.
  ///
  /// [language] Optional parameters -  The language code, indicating in which language the results
  ///  should be returned, if possible. Searches are also biased to the selected language; results
  /// in the selected language may be given a higher ranking. See the list of supported languages
  /// and their codes. Note that we often update supported languages so this list may not be
  /// exhaustive. If language is not supplied, the Place Autocomplete service will attempt to use
  /// the native language of the domain from which the request is sent.
  ///
  /// [types] Optional parameters - The types of place results to return. See Place Types below.
  /// If no type is specified, all types will be returned.
  ///
  /// [components] Optional parameters - A grouping of places to which you would like to restrict
  /// your results. Currently, you can use components to filter by up to 5 countries. Countries
  /// must be passed as a two character, ISO 3166-1 Alpha-2 compatible country code.
  ///
  /// [strictbounds] Optional parameters - Returns only those places that are strictly within
  /// the region defined by location and radius. This is a restriction, rather than a bias,
  /// meaning that results outside this region will not be returned even if they match the user input.
  Future<AutocompleteResponse?> get(
    String input, {
    String? sessionToken,
    int? offset,
    LatLon? origin,
    LatLon? location,
    int? radius,
    String? language,
    String? types,
    List<Component>? components,
    bool strictbounds = false,
  }) async {
    assert(input != "");
    if (strictbounds) {
      assert(location != null);
      assert(radius != null);
    }
    var queryParameters = _createParameters(
      apiKEY,
      input,
      sessionToken,
      offset,
      origin,
      location,
      radius,
      language,
      types,
      components,
      strictbounds,
    );
    var uri = Uri.https(_authority, _unencodedPath, queryParameters);
    var response = await NetworkUtility.fetchUrl(uri);
    if (response != null) {
      return AutocompleteResponse.parseAutocompleteResult(response);
    }
    return null;
  }

  /// Prepare query Parameters
  Map<String, String> _createParameters(
    String apiKEY,
    String input,
    String? sessionToken,
    int? offset,
    LatLon? origin,
    LatLon? location,
    int? radius,
    String? language,
    String? types,
    List<Component>? components,
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
