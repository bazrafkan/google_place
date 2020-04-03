import 'package:google_place/src/autocomplete/autocomplete_response.dart';
import 'package:google_place/src/models/lat_lon.dart';
import 'package:google_place/src/query_autocomplete/query_autocomplete_parameters.dart';
import 'package:google_place/src/utils/network_utility.dart';

class QueryAutocomplete {
  final _authority = 'maps.googleapis.com';
  final _unencodedPath = 'maps/api/place/queryautocomplete/json';
  final String apiKEY;

  QueryAutocomplete(this.apiKEY);

  /// Create a deprecation annotation which specifies the migration path and
  /// expiration of the annotated feature.
  ///
  /// The [input] argument should be readable by programmers, and should state
  /// an alternative feature (if available) as well as when an annotated feature
  /// is expected to be removed.
  Future<AutocompleteResponse> get(
    String input, {
    int offset,
    LatLon location,
    int radius,
    String language,
  }) async {
    assert(input != null);
    assert(input != "");
    var queryParameters = QueryAutocompleteParameters.createParameters(
      apiKEY,
      input,
      offset,
      location,
      radius,
      language,
    );
    var uri = Uri.https(_authority, _unencodedPath, queryParameters);
    var response = await NetworkUtility.fetchUrl(uri);
    return AutocompleteResponse.parseAutocompleteResult(response);
  }
}
