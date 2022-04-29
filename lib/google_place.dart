library google_place;

import 'package:google_place/src/autocomplete/autocomplete.dart';
import 'package:google_place/src/details/details.dart';
import 'package:google_place/src/photos/photos.dart';
import 'package:google_place/src/query_autocomplete/query_autocomplete.dart';
import 'package:google_place/src/search/search.dart';

export 'package:google_place/src/autocomplete/autocomplete_prediction/autocomplete_prediction.dart';
export 'package:google_place/src/autocomplete/autocomplete_response/autocomplete_response.dart';
export 'package:google_place/src/details/details_response/details_response.dart';
export 'package:google_place/src/details/details_result/details_result.dart';
export 'package:google_place/src/models/address_component/address_component.dart';
export 'package:google_place/src/models/bounds/bounds.dart';
export 'package:google_place/src/models/component.dart';
export 'package:google_place/src/models/debug_log/debug_log.dart';
export 'package:google_place/src/models/geometry/geometry.dart';
export 'package:google_place/src/models/input_type.dart';
export 'package:google_place/src/models/lat_lon.dart';
export 'package:google_place/src/models/location/location.dart';
export 'package:google_place/src/models/locationbias.dart';
export 'package:google_place/src/models/matched_substring/matched_substring.dart';
export 'package:google_place/src/models/opening_hours/opening_hours.dart';
export 'package:google_place/src/models/period/period.dart';
export 'package:google_place/src/models/photo/photo.dart';
export 'package:google_place/src/models/plus_code/plus_code.dart';
export 'package:google_place/src/models/rank_by.dart';
export 'package:google_place/src/models/review/review.dart';
export 'package:google_place/src/models/structured_formatting/structured_formatting.dart';
export 'package:google_place/src/models/term/term.dart';
export 'package:google_place/src/models/time_and_day/time_and_day.dart';
export 'package:google_place/src/search/find_place_response/find_place_response.dart';
export 'package:google_place/src/search/nearby_search_response/nearby_search_response.dart';
export 'package:google_place/src/search/search_result/search_result.dart';
export 'package:google_place/src/search/text_search_response.dart';

/// The Places API is a service that returns information about places.
/// Places are defined within this API as establishments, geographic locations, or prominent points of interest.
class GooglePlace {
  /// [apiKEY] Your application's API key. This key identifies your application.
  final String apiKEY;

  /// [search] returns a list of places based on a user's location or search string.
  late Search search;

  /// [details] returns more detailed information about a specific place, including user reviews.
  late Details details;

  /// [photos] provides access to the millions of place-related photos stored in Google's Place database.
  late Photos photos;

  /// [autocomplete] automatically fills in the name and/or address of a place as users type.
  late Autocomplete autocomplete;

  /// [queryAutocomplete] provides a query prediction service for text-based geographic searches, returning suggested queries as users type.
  late QueryAutocomplete queryAutocomplete;

  /// [timeout] timeout for http call.
  static Duration timeout = Duration(milliseconds: 1500);

  /// Optional headers to pass on each request
  final Map<String, String> headers;

  /// Optional proxy url to web request
  /// Can be formatted as [https:// || http://]host[:<port>][/<path>][?<url-param-name>=]
  /// http proxies are supported, but are not recommended for production use.
  final String? proxyUrl;

  GooglePlace(
    this.apiKEY, {
    this.headers = const {},
    this.proxyUrl,
  }) {
    this.search = Search(apiKEY, headers, proxyUrl);
    this.details = Details(apiKEY, headers, proxyUrl);
    this.photos = Photos(apiKEY, headers, proxyUrl);
    this.autocomplete = Autocomplete(apiKEY, headers, proxyUrl);
    this.queryAutocomplete = QueryAutocomplete(apiKEY, headers, proxyUrl);
  }
}
