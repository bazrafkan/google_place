library google_place;

import 'package:google_place/src/autocomplete/autocomplete.dart';
import 'package:google_place/src/details/details.dart';
import 'package:google_place/src/photos/photos.dart';
import 'package:google_place/src/query_autocomplete/query_autocomplete.dart';
import 'package:google_place/src/search/search.dart';

export 'package:google_place/src/autocomplete/autocomplete_response.dart';
export 'package:google_place/src/autocomplete/autocomplete_prediction.dart';
export 'package:google_place/src/details/details_response.dart';
export 'package:google_place/src/details/details_result.dart';
export 'package:google_place/src/search/find_place_response.dart';
export 'package:google_place/src/search/near_by_search_response.dart';
export 'package:google_place/src/search/text_search_response.dart';
export 'package:google_place/src/search/search_candidate.dart';
export 'package:google_place/src/search/search_result.dart';

export 'package:google_place/src/models/address_component.dart';
export 'package:google_place/src/models/bounds.dart';
export 'package:google_place/src/models/close.dart';
export 'package:google_place/src/models/component.dart';
export 'package:google_place/src/models/debug_log.dart';
export 'package:google_place/src/models/geometry.dart';
export 'package:google_place/src/models/input_type.dart';
export 'package:google_place/src/models/lat_lon.dart';
export 'package:google_place/src/models/location.dart';
export 'package:google_place/src/models/locationbias.dart';
export 'package:google_place/src/models/main_text_matched_substring.dart';
export 'package:google_place/src/models/matched_substring.dart';
export 'package:google_place/src/models/northeast.dart';
export 'package:google_place/src/models/open.dart';
export 'package:google_place/src/models/opening_hours.dart';
export 'package:google_place/src/models/period.dart';
export 'package:google_place/src/models/photo.dart';
export 'package:google_place/src/models/plus_code.dart';
export 'package:google_place/src/models/rank-by.dart';
export 'package:google_place/src/models/review.dart';
export 'package:google_place/src/models/southwest.dart';
export 'package:google_place/src/models/structured_formatting.dart';
export 'package:google_place/src/models/term.dart';
export 'package:google_place/src/models/viewport.dart';

class GooglePlace {
  final String apiKEY;
  Search search;
  Details details;
  Photos photos;
  Autocomplete autocomplete;
  QueryAutocomplete queryAutocomplete;

  GooglePlace(this.apiKEY) {
    assert(apiKEY != null);
    this.search = Search(apiKEY);
    this.details = Details(apiKEY);
    this.photos = Photos(apiKEY);
    this.autocomplete = Autocomplete(apiKEY);
    this.queryAutocomplete = QueryAutocomplete(apiKEY);
  }
}
