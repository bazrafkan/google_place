library google_place;

import 'package:google_place/src/autocomplete/autocomplete.dart';
import 'package:google_place/src/photos/photos.dart';
import 'package:google_place/src/places_details/places_details.dart';
import 'package:google_place/src/query_autocomplete/query_autocomplete.dart';
import 'package:google_place/src/search/search.dart';

export 'package:google_place/src/autocomplete/autocomplete_prediction/autocomplete_prediction.dart';
export 'package:google_place/src/autocomplete/autocomplete_response/autocomplete_response.dart';
export 'package:google_place/src/models/address_component/address_component.dart';
export 'package:google_place/src/models/bounds/bounds.dart';
export 'package:google_place/src/models/component.dart';
export 'package:google_place/src/models/debug_log/debug_log.dart';
export 'package:google_place/src/models/geometry/geometry.dart';
export 'package:google_place/src/models/input_type.dart';
export 'package:google_place/src/models/lat_lng_literal/lat_lng_literal.dart';
export 'package:google_place/src/models/lat_lon.dart';
export 'package:google_place/src/models/locationbias.dart';
export 'package:google_place/src/models/matched_substring/matched_substring.dart';
export 'package:google_place/src/models/place_opening_hours/place_opening_hours.dart';
export 'package:google_place/src/models/place_opening_hours_period/place_opening_hours_period.dart';
export 'package:google_place/src/models/place_opening_hours_period_detail/place_opening_hours_period_detail.dart';
export 'package:google_place/src/models/place_photo/place_photo.dart';
export 'package:google_place/src/models/place_review/place_review.dart';
export 'package:google_place/src/models/plus_code/plus_code.dart';
export 'package:google_place/src/models/rank_by.dart';
export 'package:google_place/src/models/structured_formatting/structured_formatting.dart';
export 'package:google_place/src/models/term/term.dart';
export 'package:google_place/src/places_details/place/place.dart';
export 'package:google_place/src/places_details/places_details.dart';
export 'package:google_place/src/places_details/places_details_response/places_details_response.dart';
export 'package:google_place/src/search/places_find_place_from_text_response/places_find_place_from_text_response.dart';
export 'package:google_place/src/search/places_nearby_search_response/places_nearby_search_response.dart';
export 'package:google_place/src/search/places_text_search_response/places_text_search_response.dart';

/// The Places API is a service that returns information about places.
/// Places are defined within this API as establishments, geographic locations, or prominent points of interest.
class GooglePlace {
  /// [apiKEY] Your application's API key. This key identifies your application.
  final String apiKEY;

  /// [search] returns a list of places based on a user's location or search string.
  final Search search;

  /// [details] returns more detailed information about a specific place, including user reviews.
  final PlacesDetails details;

  /// [photos] provides access to the millions of place-related photos stored in Google's Place database.
  final Photos photos;

  /// [autocomplete] automatically fills in the name and/or address of a place as users type.
  final Autocomplete autocomplete;

  /// [queryAutocomplete] provides a query prediction service for text-based geographic searches, returning suggested queries as users type.
  final QueryAutocomplete queryAutocomplete;

  /// [timeout] timeout for http call.
  final Duration timeout;

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
    this.timeout = const Duration(milliseconds: 30000),
  })  : search = Search(apiKEY, headers, proxyUrl),
        details = PlacesDetails(apiKEY, headers, proxyUrl),
        photos = Photos(apiKEY, headers, proxyUrl),
        autocomplete = Autocomplete(apiKEY, headers, proxyUrl),
        queryAutocomplete = QueryAutocomplete(apiKEY, headers, proxyUrl);
}
