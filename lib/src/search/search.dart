import 'dart:convert';

import 'package:google_place/google_place.dart';
import 'package:google_place/src/utils/network_utility.dart';

class Search {
  static const _authority = 'maps.googleapis.com';

  static const _unencodedPathFindPlace =
      'maps/api/place/findplacefromtext/json';

  static const _unencodedPathNearBySearch = 'maps/api/place/nearbysearch/json';

  static const _unencodedPathTextSearch = 'maps/api/place/textsearch/json';

  final String apiKEY;

  final Map<String, String> headers;

  final String? proxyUrl;

  const Search(this.apiKEY, this.headers, this.proxyUrl);

  /// A Find Place request takes a text input and returns a place.
  /// The input can be any kind of Places text data, such as a name, address, or phone number.
  /// The request must be a string.
  ///
  /// [input] Required parameters - Text input that identifies the search target, such as a name, address,
  /// or phone number. The input must be a string. Non-string input such as a lat/lng coordinate or plus
  /// code generates an error.
  ///
  /// [inputType] Required parameters - The type of input. This can be one of either textquery or phonenumber.
  /// Phone numbers must be in international format (prefixed by a plus sign ("+"),
  /// followed by the country code, then the phone number itself).
  ///
  /// [language] Optional parameters - The language code, indicating in which language the results should
  /// be returned, if possible. Searches are also biased to the selected language;
  /// results in the selected language may be given a higher ranking
  ///
  /// [fields] Optional parameters - The fields specifying the types of place data to return, separated by a comma.
  ///
  /// [locationbias] Optional parameters - Prefer results in a specified area, by specifying either a radius plus
  /// lat/lng, or two lat/lng pairs representing the points of a rectangle.
  Future<PlacesFindPlaceFromTextResponse?> getFindPlace(
    String input,
    InputType inputType, {
    String? language,
    String? fields,
    Locationbias? locationbias,
  }) async {
    assert(input != "");
    final queryParameters = _createFindPlaceParameters(
      apiKEY,
      input,
      inputType,
      language,
      fields,
      locationbias,
    );
    final uri = createUri(
      proxyUrl,
      _authority,
      _unencodedPathFindPlace,
      queryParameters,
    );
    final response = await fetchUrl(uri, headers: headers);

    return PlacesFindPlaceFromTextResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }

  /// A Nearby Search lets you search for places within a specified area.
  /// You can refine your search request by supplying keywords or specifying the type of place you are searching for.
  ///
  /// [location] Required parameters - The latitude/longitude around which to retrieve place information.
  /// This must be specified as latitude,longitude.
  ///
  /// [radius] Required parameters - Defines the distance (in meters) within which to return place results.
  /// The maximum allowed radius is 50 000 meters. Note that radius must not be included if rankby=distance
  /// (described under Optional parameters below) is specified.
  ///
  /// [keyword] Optional parameters - A term to be matched against all content that Google has indexed for
  /// this place, including but not limited to name, type, and address, as well as customer reviews and other
  /// third-party content.
  ///
  /// [language] Optional parameters - The language code, indicating in which language the results should be
  /// returned, if possible.
  ///
  /// [minprice] and [maxprice] Optional parameters - Restricts results to only those places within the specified
  /// range. Valid values range between 0 (most affordable) to 4 (most expensive), inclusive. The exact amount
  /// indicated by a specific value will vary from region to region.
  ///
  /// [name] Optional parameters - A term to be matched against all content that Google has indexed for this place.
  /// Equivalent to keyword. The name field is no longer restricted to place names. Values in this field are
  /// combined with values in the keyword field and passed as part of the same search string. We recommend using
  /// only the keyword parameter for all search terms.
  ///
  /// [opennow] Optional parameters - Returns only those places that are open for business at the time the query
  /// is sent. Places that do not specify opening hours in the Google Places database will not be returned if you
  /// include this parameter in your query.
  ///
  /// [rankby] Optional parameters - Specifies the order in which results are listed. Note that rankby must not be
  /// included if radius (described under Required parameters above) is specified.
  ///
  /// [type] Optional parameters - Restricts the results to places matching the specified type. Only one type may be
  /// specified (if more than one type is provided, all types following the first entry are ignored).
  ///
  /// [pagetoken] Optional parameters - Returns up to 20 results from a previously run search. Setting a
  /// pagetoken parameter will execute a search with the same parameters used previously — all parameters
  /// other than pagetoken will be ignored.
  Future<PlacesNearbySearchResponse?> getNearBySearch(
    LatLngLiteral location,
    int radius, {
    String? keyword,
    String? language,
    int? minprice,
    int? maxprice,
    String? name,
    bool? opennow,
    RankBy? rankby,
    String? type,
    String? pagetoken,
  }) async {
    final queryParameters = _createNearBySearchParameters(
      apiKEY,
      location,
      radius,
      keyword,
      language,
      minprice,
      maxprice,
      name,
      opennow,
      rankby,
      type,
      pagetoken,
    );
    final uri =
        Uri.https(_authority, _unencodedPathNearBySearch, queryParameters);
    final response = await fetchUrl(uri, headers: headers);

    return PlacesNearbySearchResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }

  /// The Google Places API Text Search Service is a web service that returns information about a set of places
  /// based on a string — for example "pizza in New York" or "shoe stores near Ottawa" or "123 Main Street".
  /// The service responds with a list of places matching the text string and any location bias that has been set.
  ///The service is especially useful for making ambiguous address queries in an automated system, and non-address
  ///components of the string may match businesses as well as addresses. Examples of ambiguous address queries are
  ///incomplete addresses, poorly formatted addresses, or a request that includes non-address components such as
  ///business names.
  ///
  /// [query] Required parameters - The text string on which to search, for example: "restaurant" or "123 Main Street".
  /// The Google Places service will return candidate matches based on this string and order the results based on
  /// their perceived relevance. This parameter becomes optional if the type parameter is also used in the search
  /// request.
  ///
  /// [region] Optional parameters - The region code, specified as a ccTLD (country code top-level domain)
  /// two-character value. Most ccTLD codes are identical to ISO 3166-1 codes, with some exceptions.
  /// This parameter will only influence, not fully restrict, search results. If more relevant results exist
  /// outside of the specified region, they may be included. When this parameter is used, the country name is
  /// omitted from the resulting formatted_address for results in the specified region.
  ///
  /// [location] Optional parameters - The latitude/longitude around which to retrieve place information.
  /// This must be specified as latitude,longitude. If you specify a location parameter, you must also specify
  /// a radius parameter.
  ///
  /// [radius] Optional parameters - Defines the distance (in meters) within which to bias place results.
  /// The maximum allowed radius is 50 000 meters. Results inside of this region will be ranked higher than results
  /// outside of the search circle; however, prominent results from outside of the search radius may be included.
  ///
  /// [language] Optional parameters - The language code, indicating in which language the results should be
  /// returned, if possible. See the list of supported languages and their codes. Note that we often update
  /// supported languages so this list may not be exhaustive.
  ///
  /// [minprice] and [maxprice] Optional parameters - Restricts results to only those places within the specified
  /// price level. Valid values are in the range from 0 (most affordable) to 4 (most expensive), inclusive.
  /// The exact amount indicated by a specific value will vary from region to region.
  ///
  /// [opennow] Optional parameters - Returns only those places that are open for business at the time the query
  /// is sent. Places that do not specify opening hours in the Google Places database will not be returned if
  /// you include this parameter in your query.
  ///
  /// [type] Optional parameters - Restricts the results to places matching the specified type. Only one type may be
  /// specified (if more than one type is provided, all types following the first entry are ignored).
  ///
  /// [pagetoken] Optional parameters - Returns up to 20 results from a previously run search. Setting a pagetoken
  /// parameter will execute a search with the same parameters used previously — all parameters other than pagetoken
  /// will be ignored.
  Future<PlacesTextSearchResponse?> getTextSearch(
    String query, {
    String? region,
    LatLngLiteral? location,
    int? radius,
    String? language,
    int? minprice,
    int? maxprice,
    bool? opennow,
    String? type,
    String? pagetoken,
  }) async {
    assert(query != "");
    final queryParameters = _createTextSearchParameters(
      apiKEY,
      query,
      region,
      location,
      radius,
      language,
      minprice,
      maxprice,
      opennow,
      type,
      pagetoken,
    );
    final uri =
        Uri.https(_authority, _unencodedPathTextSearch, queryParameters);
    final response = await fetchUrl(uri, headers: headers);

    return PlacesTextSearchResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }

  /// A Find Place request takes a text input and returns a place.
  /// The input can be any kind of Places text data, such as a name, address, or phone number.
  /// The request must be a string.
  ///
  /// [input] Required parameters - Text input that identifies the search target, such as a name, address,
  /// or phone number. The input must be a string. Non-string input such as a lat/lng coordinate or plus
  /// code generates an error.
  ///
  /// [inputType] Required parameters - The type of input. This can be one of either textquery or phonenumber.
  /// Phone numbers must be in international format (prefixed by a plus sign ("+"),
  /// followed by the country code, then the phone number itself).
  ///
  /// [language] Optional parameters - The language code, indicating in which language the results should
  /// be returned, if possible. Searches are also biased to the selected language;
  /// results in the selected language may be given a higher ranking
  ///
  /// [fields] Optional parameters - The fields specifying the types of place data to return, separated by a comma.
  ///
  /// [locationbias] Optional parameters - Prefer results in a specified area, by specifying either a radius plus
  /// lat/lng, or two lat/lng pairs representing the points of a rectangle.
  // TODO: Why do we expose this? Whose gonna use this?
  Future<String?> getFindPlaceJson(
    String input,
    InputType inputType, {
    String? language,
    String? fields,
    Locationbias? locationbias,
  }) async {
    assert(input != "");
    final queryParameters = _createFindPlaceParameters(
      apiKEY,
      input,
      inputType,
      language,
      fields,
      locationbias,
    );

    final uri = Uri.https(
      proxyUrl != null && proxyUrl != '' ? proxyUrl! : _authority,
      proxyUrl != null && proxyUrl != ''
          ? 'https://$_authority/$_unencodedPathFindPlace'
          : _unencodedPathFindPlace,
      queryParameters,
    );
    return (await fetchUrl(uri, headers: headers)).body;
  }

  /// A Nearby Search lets you search for places within a specified area.
  /// You can refine your search request by supplying keywords or specifying the type of place you are searching for.
  ///
  /// [location] Required parameters - The latitude/longitude around which to retrieve place information.
  /// This must be specified as latitude,longitude.
  ///
  /// [radius] Required parameters - Defines the distance (in meters) within which to return place results.
  /// The maximum allowed radius is 50 000 meters. Note that radius must not be included if rankby=distance
  /// (described under Optional parameters below) is specified.
  ///
  /// [keyword] Optional parameters - A term to be matched against all content that Google has indexed for
  /// this place, including but not limited to name, type, and address, as well as customer reviews and other
  /// third-party content.
  ///
  /// [language] Optional parameters - The language code, indicating in which language the results should be
  /// returned, if possible.
  ///
  /// [minprice] and [maxprice] Optional parameters - Restricts results to only those places within the specified
  /// range. Valid values range between 0 (most affordable) to 4 (most expensive), inclusive. The exact amount
  /// indicated by a specific value will vary from region to region.
  ///
  /// [name] Optional parameters - A term to be matched against all content that Google has indexed for this place.
  /// Equivalent to keyword. The name field is no longer restricted to place names. Values in this field are
  /// combined with values in the keyword field and passed as part of the same search string. We recommend using
  /// only the keyword parameter for all search terms.
  ///
  /// [opennow] Optional parameters - Returns only those places that are open for business at the time the query
  /// is sent. Places that do not specify opening hours in the Google Places database will not be returned if you
  /// include this parameter in your query.
  ///
  /// [rankby] Optional parameters - Specifies the order in which results are listed. Note that rankby must not be
  /// included if radius (described under Required parameters above) is specified.
  ///
  /// [type] Optional parameters - Restricts the results to places matching the specified type. Only one type may be
  /// specified (if more than one type is provided, all types following the first entry are ignored).
  ///
  /// [pagetoken] Optional parameters - Returns up to 20 results from a previously run search. Setting a
  /// pagetoken parameter will execute a search with the same parameters used previously — all parameters
  /// other than pagetoken will be ignored.
  Future<String?> getNearBySearchJson(
    LatLngLiteral location,
    int radius, {
    String? keyword,
    String? language,
    int? minprice,
    int? maxprice,
    String? name,
    bool? opennow,
    RankBy? rankby,
    String? type,
    String? pagetoken,
  }) async {
    final queryParameters = _createNearBySearchParameters(
      apiKEY,
      location,
      radius,
      keyword,
      language,
      minprice,
      maxprice,
      name,
      opennow,
      rankby,
      type,
      pagetoken,
    );
    final uri =
        Uri.https(_authority, _unencodedPathNearBySearch, queryParameters);

    return (await fetchUrl(uri, headers: headers)).body;
  }

  /// The Google Places API Text Search Service is a web service that returns information about a set of places
  /// based on a string — for example "pizza in New York" or "shoe stores near Ottawa" or "123 Main Street".
  /// The service responds with a list of places matching the text string and any location bias that has been set.
  ///The service is especially useful for making ambiguous address queries in an automated system, and non-address
  ///components of the string may match businesses as well as addresses. Examples of ambiguous address queries are
  ///incomplete addresses, poorly formatted addresses, or a request that includes non-address components such as
  ///business names.
  ///
  /// [query] Required parameters - The text string on which to search, for example: "restaurant" or "123 Main Street".
  /// The Google Places service will return candidate matches based on this string and order the results based on
  /// their perceived relevance. This parameter becomes optional if the type parameter is also used in the search
  /// request.
  ///
  /// [region] Optional parameters - The region code, specified as a ccTLD (country code top-level domain)
  /// two-character value. Most ccTLD codes are identical to ISO 3166-1 codes, with some exceptions.
  /// This parameter will only influence, not fully restrict, search results. If more relevant results exist
  /// outside of the specified region, they may be included. When this parameter is used, the country name is
  /// omitted from the resulting formatted_address for results in the specified region.
  ///
  /// [location] Optional parameters - The latitude/longitude around which to retrieve place information.
  /// This must be specified as latitude,longitude. If you specify a location parameter, you must also specify
  /// a radius parameter.
  ///
  /// [radius] Optional parameters - Defines the distance (in meters) within which to bias place results.
  /// The maximum allowed radius is 50 000 meters. Results inside of this region will be ranked higher than results
  /// outside of the search circle; however, prominent results from outside of the search radius may be included.
  ///
  /// [language] Optional parameters - The language code, indicating in which language the results should be
  /// returned, if possible. See the list of supported languages and their codes. Note that we often update
  /// supported languages so this list may not be exhaustive.
  ///
  /// [minprice] and [maxprice] Optional parameters - Restricts results to only those places within the specified
  /// price level. Valid values are in the range from 0 (most affordable) to 4 (most expensive), inclusive.
  /// The exact amount indicated by a specific value will vary from region to region.
  ///
  /// [opennow] Optional parameters - Returns only those places that are open for business at the time the query
  /// is sent. Places that do not specify opening hours in the Google Places database will not be returned if
  /// you include this parameter in your query.
  ///
  /// [type] Optional parameters - Restricts the results to places matching the specified type. Only one type may be
  /// specified (if more than one type is provided, all types following the first entry are ignored).
  ///
  /// [pagetoken] Optional parameters - Returns up to 20 results from a previously run search. Setting a pagetoken
  /// parameter will execute a search with the same parameters used previously — all parameters other than pagetoken
  /// will be ignored.
  Future<String?> getTextSearchJson(
    String query, {
    String? region,
    LatLngLiteral? location,
    int? radius,
    String? language,
    int? minprice,
    int? maxprice,
    bool? opennow,
    String? type,
    String? pagetoken,
  }) async {
    assert(query != "");
    final queryParameters = _createTextSearchParameters(
      apiKEY,
      query,
      region,
      location,
      radius,
      language,
      minprice,
      maxprice,
      opennow,
      type,
      pagetoken,
    );
    final uri =
        Uri.https(_authority, _unencodedPathTextSearch, queryParameters);

    return (await fetchUrl(uri, headers: headers)).body;
  }

  /// Prepare query Parameters for find place
  Map<String, String?> _createFindPlaceParameters(
    String apiKEY,
    String input,
    InputType inputType,
    String? language,
    String? fields,
    Locationbias? locationbias,
  ) {
    final cleanedInput = input.trimRight().trimLeft();
    final queryParameters = <String, String?>{
      'input': cleanedInput,
      'key': apiKEY,
      'inputtype': inputType == InputType.textQuery
          ? 'textquery'
          : inputType == InputType.phoneNumber
              ? 'phonenumber'
              : 'textquery',
      if (language != null && language != '') 'language': language,
      if (fields != null && fields != '') 'fields': fields,
    };

    if (locationbias != null) {
      String? value;
      if (locationbias.ipbias != null && locationbias.ipbias!) {
        value = 'ipbias';
      }
      if (locationbias.point != null) {
        value =
            'point:${locationbias.point!.latitude},${locationbias.point!.longitude}';
      }
      if (locationbias.circular != null) {
        value =
            'circle:${locationbias.circular!.radius}@${locationbias.circular!.latLng.latitude},${locationbias.circular!.latLng.longitude}';
      }
      if (locationbias.rectangular != null) {
        value =
            'rectangle:${locationbias.rectangular!.southWest.latitude},${locationbias.rectangular!.southWest.longitude}|${locationbias.rectangular!.northEast.latitude},${locationbias.rectangular!.northEast.longitude}';
      }

      final item = {'locationbias': value};
      queryParameters.addAll(item);
    }

    return queryParameters;
  }

  /// Prepare query Parameters for near by search
  Map<String, String?> _createNearBySearchParameters(
    String apiKEY,
    LatLngLiteral location,
    int radius,
    String? keyword,
    String? language,
    int? minprice,
    int? maxprice,
    String? name,
    bool? opennow,
    RankBy? rankby,
    String? type,
    String? pagetoken,
  ) {
    final queryParameters = <String, String?>{
      'location': '${location.lat},${location.lng}',
      'key': apiKEY,
      'radius': radius.toString(),
      if (keyword != null && keyword != '') 'keyword': keyword,
      if (language != null && language != '') 'language': language,
      if (minprice != null) 'minprice': minprice.toString(),
      if (maxprice != null) 'maxprice': maxprice.toString(),
      if (name != null && name != '') 'name': name,
      if (opennow != null && opennow) 'opennow': 'opennow',
      if (type != null && type != '') 'type': type,
      if (pagetoken != null && pagetoken != '') 'pagetoken': pagetoken,
    };

    // TODO: Clean this up
    if (rankby != null) {
      if (rankby == RankBy.distance) {
        queryParameters.remove('radius');
      }

      final item = {'rankby': rankby.name};

      queryParameters.addAll(item);
    }

    return queryParameters;
  }

  /// Prepare query Parameters for text search
  Map<String, String> _createTextSearchParameters(
    String apiKEY,
    String query,
    String? region,
    LatLngLiteral? location,
    int? radius,
    String? language,
    int? minprice,
    int? maxprice,
    bool? opennow,
    String? type,
    String? pagetoken,
  ) {
    final cleanedQuery = query.trimRight().trimLeft();
    final queryParameters = <String, String>{
      'query': cleanedQuery,
      'key': apiKEY,
      if (region != null && region != '') 'region': region,
      if (location != null) 'location': '${location.lat},${location.lng}',
      if (radius != null) 'radius': radius.toString(),
      if (language != null && language != '') 'language': language,
      if (minprice != null) 'minprice': minprice.toString(),
      if (maxprice != null) 'maxprice': maxprice.toString(),
      if (opennow != null && opennow) 'opennow': 'opennow',
      if (type != null && type != '') 'type': type,
      if (pagetoken != null && pagetoken != '') 'pagetoken': pagetoken,
    };

    return queryParameters;
  }
}
