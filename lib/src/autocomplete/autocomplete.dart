import 'package:google_place/src/autocomplete/autocomplete_parameters.dart';
import 'package:google_place/src/autocomplete/autocomplete_response.dart';
import 'package:google_place/src/models/lat_lon.dart';
import 'package:google_place/src/utils/network_utility.dart';

class Autocomplete {
  final _authority = 'maps.googleapis.com';
  final _unencodedPath = 'maps/api/place/autocomplete/json';
  final String apiKEY;

  Autocomplete(this.apiKEY);

  /// Create a deprecation annotation which specifies the migration path and
  /// expiration of the annotated feature.
  ///
  /// The [input] argument should be readable by programmers, and should state
  /// an alternative feature (if available) as well as when an annotated feature
  /// is expected to be removed.
  Future<AutocompleteResponse> get(
    String input, {
    String sessionToken,
    int offset,
    LatLon origin,
    LatLon location,
    int radius,
    String language,
    String types,
    List<String> components,
    bool strictbounds = false,
  }) async {
    assert(input != null);
    assert(input != "");
    if (strictbounds) {
      assert(location != null);
      assert(radius != null);
    }
    var queryParameters = AutocompleteParameters.createParameters(
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
}
