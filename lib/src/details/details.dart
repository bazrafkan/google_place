import 'package:google_place/google_place.dart';
import 'package:google_place/src/details/details_response.dart';
import 'package:google_place/src/utils/network_utility.dart';

class Details {
  static final _authority = 'maps.googleapis.com';
  static final _unencodedPath = 'maps/api/place/details/json';
  final String apiKEY;
  final Map<String, String> headers;
  final String? proxyUrl;

  Details(this.apiKEY, this.headers, this.proxyUrl);

  /// Once you have a place_id from a Place Search, you can request more details about a
  /// particular establishment or point of interest by initiating a Place Details request.
  /// A Place Details request returns more comprehensive information about the indicated
  /// place such as its complete address, phone number, user rating and reviews.
  ///
  /// [placeId] Required parameters - A textual identifier that uniquely identifies a place,
  /// returned from a Place Search. For more information about place IDs.
  ///
  /// [language] Optional parameters - The language code, indicating in which language the
  /// results should be returned, if possible. Note that some fields may not be available in
  /// the requested language. See the list of supported languages and their codes. Note that
  ///  we often update supported languages so this list may not be exhaustive.
  ///
  /// [region] Optional parameters - The region code, specified as a ccTLD (country code top-level domain)
  /// two-character value. Most ccTLD codes are identical to ISO 3166-1 codes, with some exceptions.
  /// This parameter will only influence, not fully restrict, results. If more relevant results
  ///  exist outside of the specified region, they may be included. When this parameter is used,
  ///  the country name is omitted from the resulting formatted_address for results in the specified region.
  ///
  /// [sessionToken] Optional parameters - A random string which identifies an autocomplete session for
  /// billing purposes. Use this for Place Details requests that are called following an autocomplete
  /// request in the same user session.
  ///
  /// [fields] Optional parameters - One or more fields, specifying the types of place data to return,
  /// separated by a comma.
  Future<DetailsResponse?> get(
    String placeId, {
    String? language,
    String? region,
    String? sessionToken,
    String? fields,
  }) async {
    assert(placeId != "");
    var queryParameters = _createParameters(
      apiKEY,
      placeId,
      language,
      region,
      sessionToken,
      fields,
    );
    var uri = NetworkUtility.createUri(
      proxyUrl,
      _authority,
      _unencodedPath,
      queryParameters,
    );
    var response = await NetworkUtility.fetchUrl(uri, headers: headers);
    if (response != null) {
      return DetailsResponse.parseDetailsResult(response);
    }
    return null;
  }

  /// Once you have a place_id from a Place Search, you can request more details about a
  /// particular establishment or point of interest by initiating a Place Details request.
  /// A Place Details request returns more comprehensive information about the indicated
  /// place such as its complete address, phone number, user rating and reviews.
  ///
  /// [placeId] Required parameters - A textual identifier that uniquely identifies a place,
  /// returned from a Place Search. For more information about place IDs.
  ///
  /// [language] Optional parameters - The language code, indicating in which language the
  /// results should be returned, if possible. Note that some fields may not be available in
  /// the requested language. See the list of supported languages and their codes. Note that
  ///  we often update supported languages so this list may not be exhaustive.
  ///
  /// [region] Optional parameters - The region code, specified as a ccTLD (country code top-level domain)
  /// two-character value. Most ccTLD codes are identical to ISO 3166-1 codes, with some exceptions.
  /// This parameter will only influence, not fully restrict, results. If more relevant results
  ///  exist outside of the specified region, they may be included. When this parameter is used,
  ///  the country name is omitted from the resulting formatted_address for results in the specified region.
  ///
  /// [sessionToken] Optional parameters - A random string which identifies an autocomplete session for
  /// billing purposes. Use this for Place Details requests that are called following an autocomplete
  /// request in the same user session.
  ///
  /// [fields] Optional parameters - One or more fields, specifying the types of place data to return,
  /// separated by a comma.
  Future<String?> getJson(
    String placeId, {
    String? language,
    String? region,
    String? sessionToken,
    String? fields,
  }) async {
    assert(placeId != "");
    var queryParameters = _createParameters(
      apiKEY,
      placeId,
      language,
      region,
      sessionToken,
      fields,
    );

    var uri = Uri.https(
      proxyUrl != null && proxyUrl != '' ? proxyUrl! : _authority,
      proxyUrl != null && proxyUrl != ''
          ? 'https://$_authority/$_unencodedPath'
          : _unencodedPath,
      queryParameters,
    );
    return await NetworkUtility.fetchUrl(uri, headers: headers);
  }

  /// Prepare query Parameters
  Map<String, String> _createParameters(
    String apiKEY,
    String placeId,
    String? language,
    String? region,
    String? sessionToken,
    String? fields,
  ) {
    Map<String, String> queryParameters = {
      'key': apiKEY,
      'place_id': placeId,
    };

    if (language != null && language != '') {
      var item = {
        'language': language,
      };
      queryParameters.addAll(item);
    }

    if (region != null && region != '') {
      var item = {
        'region': region,
      };
      queryParameters.addAll(item);
    }

    if (sessionToken != null && sessionToken != '') {
      var item = {
        'sessiontoken': sessionToken,
      };
      queryParameters.addAll(item);
    }

    if (fields != null && fields != '') {
      var item = {
        'fields': fields,
      };
      queryParameters.addAll(item);
    }
    return queryParameters;
  }
}
