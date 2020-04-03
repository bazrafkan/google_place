import 'package:google_place/src/details/details_parameters.dart';
import 'package:google_place/src/details/details_response.dart';
import 'package:google_place/src/utils/network_utility.dart';

class Details {
  final _authority = 'maps.googleapis.com';
  final _unencodedPath = 'maps/api/place/details/json';
  final String apiKEY;

  Details(this.apiKEY);

  Future<DetailsResponse> get(
    String placeId, {
    String language,
    String region,
    String sessionToken,
    String fields,
  }) async {
    assert(placeId != null);
    assert(placeId != "");
    var queryParameters = DetailsParameters.createParameters(
      apiKEY,
      placeId,
      language,
      region,
      sessionToken,
      fields,
    );

    var uri = Uri.https(_authority, _unencodedPath, queryParameters);
    var response = await NetworkUtility.fetchUrl(uri);
    return DetailsResponse.parseDetailsResult(response);
  }
}
