import 'dart:convert';

import 'package:google_place/google_place.dart';
import 'package:google_place/src/utils/network_utility.dart';

class Autocomplete {
  static const _authority = 'maps.googleapis.com';

  static const _unencodedPath = 'maps/api/place/autocomplete/json';

  final String apiKEY;

  final Map<String, String> headers;

  final String? proxyUrl;

  const Autocomplete(
    this.apiKEY,
    this.headers,
    this.proxyUrl,
  );

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
  /// [region] Optional parameters - The region code, specified as a ccTLD (country code top-level domain)
  /// two-character value. Most ccTLD codes are identical to ISO 3166-1 codes, with some exceptions.
  /// This parameter will only influence, not fully restrict, results. If more relevant results
  ///  exist outside of the specified region, they may be included. When this parameter is used,
  ///  the country name is omitted from the resulting formatted_address for results in the specified region.
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
    String? region,
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
    final queryParameters = _createParameters(
      apiKEY,
      input,
      sessionToken,
      offset,
      origin,
      location,
      radius,
      region,
      language,
      types,
      components,
      strictbounds,
    );

    final uri = createUri(
      proxyUrl,
      _authority,
      _unencodedPath,
      queryParameters,
    );

    final response = await fetchUrl(uri, headers: headers);

    return AutocompleteResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }

  /// The Place Autocomplete service is a web service that returns place predictions in response
  ///  to an HTTP request. The request specifies a textual search string and optional geographic
  /// bounds. The service can be used to provide autocomplete functionality for text-based
  /// geographic searches, by returning json places.
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
  /// [region] Optional parameters - The region code, specified as a ccTLD (country code top-level domain)
  /// two-character value. Most ccTLD codes are identical to ISO 3166-1 codes, with some exceptions.
  /// This parameter will only influence, not fully restrict, results. If more relevant results
  ///  exist outside of the specified region, they may be included. When this parameter is used,
  ///  the country name is omitted from the resulting formatted_address for results in the specified region.
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
  Future<String?> getJson(
    String input, {
    String? sessionToken,
    int? offset,
    LatLon? origin,
    LatLon? location,
    int? radius,
    String? region,
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
    final queryParameters = _createParameters(
      apiKEY,
      input,
      sessionToken,
      offset,
      origin,
      location,
      radius,
      region,
      language,
      types,
      components,
      strictbounds,
    );
    final uri = Uri.https(
      proxyUrl != null && proxyUrl != '' ? proxyUrl! : _authority,
      proxyUrl != null && proxyUrl != ''
          ? 'https://$_authority/$_unencodedPath'
          : _unencodedPath,
      queryParameters,
    );

    return (await fetchUrl(uri, headers: headers)).body;
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
    String? region,
    String? language,
    String? types,
    List<Component>? components,
    bool strictbounds,
  ) {
    final cleanedInput = input.trimRight().trimLeft();
    final queryParameters = <String, String>{
      'input': cleanedInput,
      'key': apiKEY,
      if (origin != null) 'origin': '${origin.latitude},${origin.longitude}',
      if (location != null)
        'location': '${location.latitude},${location.longitude}',
      if (offset != null) 'offset': offset.toString(),
      if (radius != null) 'radius': radius.toString(),
      if (sessionToken != null && sessionToken != '')
        'sessiontoken': sessionToken,
      if (region != null && region != '') 'region': region,
      if (language != null && language != '') 'language': language,
      if (types != null && types != '') 'types': types,
      if (strictbounds) 'strictbounds': 'true',
    };

    // TODO: What is this doing?
    if (components != null && components.isNotEmpty) {
      String result = '';
      for (int i = 0; i < components.length; i++) {
        result += '${components[i].component}:${components[i].value}';
        if (i + 1 != components.length) {
          result += '|';
        }
      }
      final item = {
        'components': result,
      };
      queryParameters.addAll(item);
    }

    return queryParameters;
  }
}
