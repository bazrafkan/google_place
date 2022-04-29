import 'dart:convert';

import 'package:google_place/google_place.dart';
import 'package:google_place/src/autocomplete/autocomplete_response/autocomplete_response.dart';
import 'package:google_place/src/utils/network_utility.dart';

class QueryAutocomplete {
  static final _authority = 'maps.googleapis.com';

  static final _unencodedPath = 'maps/api/place/queryautocomplete/json';

  final String apiKEY;

  final Map<String, String> headers;

  final String? proxyUrl;

  const QueryAutocomplete(this.apiKEY, this.headers, this.proxyUrl);

  /// The Query Autocomplete service can be used to provide a query prediction for text-based
  /// geographic searches, by returning suggested queries as you type.
  ///
  /// [input] Required parameters - The text string on which to search. The Places service will return
  /// candidate matches based on this string and order results based on their perceived relevance.
  ///
  /// [offset] Optional parameters - The character position in the input term at which the service
  /// uses text for predictions. For example, if the input is 'Googl' and the completion point is 3,
  /// the service will match on 'Goo'. The offset should generally be set to the position of the text
  /// caret. If no offset is supplied, the service will use the entire term.
  ///
  /// [location] Optional parameters - The point around which you wish to retrieve place information.
  /// Must be specified as latitude,longitude.
  ///
  /// [radius] Optional parameters - The distance (in meters) within which to return place results.
  /// Note that setting a radius biases results to the indicated area, but may not fully restrict
  /// results to the specified area.
  /// [language] Optional parameters - The language code, indicating in which language the results
  /// should be returned, if possible. Searches are also biased to the selected language; results in
  /// the selected language may be given a higher ranking. See the supported list of domain languages.
  /// If language is not supplied, the Places service will attempt to use the native language of the
  /// domain from which the request is sent.
  Future<AutocompleteResponse?> get(
    String input, {
    int? offset,
    LatLon? location,
    int? radius,
    String? language,
  }) async {
    assert(input != "");
    final queryParameters = _createParameters(
      apiKEY,
      input,
      offset,
      location,
      radius,
      language,
    );
    final uri = NetworkUtility.createUri(
      proxyUrl,
      _authority,
      _unencodedPath,
      queryParameters,
    );
    final response = await NetworkUtility.fetchUrl(uri, headers: headers);

    if (response != null) {
      return AutocompleteResponse.fromJson(jsonDecode(response));
    }

    return null;
  }

  /// The Query Autocomplete service can be used to provide a query prediction for text-based
  /// geographic searches, by returning json string.
  ///
  /// [input] Required parameters - The text string on which to search. The Places service will return
  /// candidate matches based on this string and order results based on their perceived relevance.
  ///
  /// [offset] Optional parameters - The character position in the input term at which the service
  /// uses text for predictions. For example, if the input is 'Googl' and the completion point is 3,
  /// the service will match on 'Goo'. The offset should generally be set to the position of the text
  /// caret. If no offset is supplied, the service will use the entire term.
  ///
  /// [location] Optional parameters - The point around which you wish to retrieve place information.
  /// Must be specified as latitude,longitude.
  ///
  /// [radius] Optional parameters - The distance (in meters) within which to return place results.
  /// Note that setting a radius biases results to the indicated area, but may not fully restrict
  /// results to the specified area.
  /// [language] Optional parameters - The language code, indicating in which language the results
  /// should be returned, if possible. Searches are also biased to the selected language; results in
  /// the selected language may be given a higher ranking. See the supported list of domain languages.
  /// If language is not supplied, the Places service will attempt to use the native language of the
  /// domain from which the request is sent.
  Future<String?> getJson(
    String input, {
    int? offset,
    LatLon? location,
    int? radius,
    String? language,
  }) async {
    assert(input != "");
    final queryParameters = _createParameters(
      apiKEY,
      input,
      offset,
      location,
      radius,
      language,
    );
    final uri = NetworkUtility.createUri(
      proxyUrl,
      _authority,
      _unencodedPath,
      queryParameters,
    );

    return await NetworkUtility.fetchUrl(uri, headers: headers);
  }

  /// Prepare query Parameters
  Map<String, String> _createParameters(
    String apiKEY,
    String input,
    int? offset,
    LatLon? location,
    int? radius,
    String? language,
  ) {
    final cleanedInput = input.trimRight().trimLeft();
    final queryParameters = <String, String>{
      'input': cleanedInput,
      'key': apiKEY,
      if (location != null)
        'location': '${location.latitude},${location.longitude}',
      if (offset != null) 'offset': offset.toString(),
      if (radius != null) 'radius': radius.toString(),
      if (language != null && language != '') 'language': language,
    };

    return queryParameters;
  }
}
