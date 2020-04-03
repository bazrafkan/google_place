import 'package:google_place/src/models/input_type.dart';
import 'package:google_place/src/models/location.dart';
import 'package:google_place/src/models/locationbias.dart';
import 'package:google_place/src/models/rank-by.dart';
import 'package:google_place/src/search/find_place_response.dart';
import 'package:google_place/src/search/near_by_search_response.dart';
import 'package:google_place/src/search/search_parameters.dart';
import 'package:google_place/src/search/text_search_response.dart';
import 'package:google_place/src/utils/network_utility.dart';

class Search {
  final _authority = 'maps.googleapis.com';
  final _unencodedPathFindPlace = 'maps/api/place/findplacefromtext/json';
  final _unencodedPathNearBySearch = 'maps/api/place/nearbysearch/json';
  final _unencodedPathTextSearch = 'maps/api/place/textsearch/json';
  final String apiKEY;

  Search(this.apiKEY);

  Future<FindPlaceResponse> getFindPlace(
    String input,
    InputType inputType, {
    String language,
    String fields,
    Locationbias locationbias,
  }) async {
    assert(input != null);
    assert(input != "");
    assert(inputType != null);
    assert(inputType != null);
    var queryParameters = SearchParameters.createFindPlaceParameters(
      apiKEY,
      input,
      inputType,
      language,
      fields,
      locationbias,
    );

    var uri = Uri.https(_authority, _unencodedPathFindPlace, queryParameters);
    var response = await NetworkUtility.fetchUrl(uri);
    if (response != null) {
      return FindPlaceResponse.parseFindPlaceResult(response);
    }
    return null;
  }

  Future<NearBySearchResponse> getNearBySearch(
    Location location,
    int radius, {
    String keyword,
    String language,
    int minprice,
    int maxprice,
    String name,
    bool opennow,
    RankBy rankby,
    String type,
    String pagetoken,
  }) async {
    assert(location != null);
    assert(radius != null);
    var queryParameters = SearchParameters.createNearBySearchParameters(
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

    var uri =
        Uri.https(_authority, _unencodedPathNearBySearch, queryParameters);
    var response = await NetworkUtility.fetchUrl(uri);
    if (response != null) {
      return NearBySearchResponse.parseNearBySearchResult(response);
    }
    return null;
  }

  Future<TextSearchResponse> getTextSearch(
    String query, {
    String region,
    Location location,
    int radius,
    String language,
    int minprice,
    int maxprice,
    bool opennow,
    String type,
    String pagetoken,
  }) async {
    assert(query != null);
    assert(query != "");
    var queryParameters = SearchParameters.createTextSearchParameters(
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

    var uri = Uri.https(_authority, _unencodedPathTextSearch, queryParameters);
    var response = await NetworkUtility.fetchUrl(uri);
    if (response != null) {
      return TextSearchResponse.parseTextSearchResult(response);
    }
    return null;
  }
}
