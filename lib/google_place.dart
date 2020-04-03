library google_place;

import 'package:google_place/src/autocomplete/autocomplete.dart';
import 'package:google_place/src/details/details.dart';
import 'package:google_place/src/photos/photos.dart';
import 'package:google_place/src/query_autocomplete/query_autocomplete.dart';
import 'package:google_place/src/search/search.dart';

export 'package:google_place/src/autocomplete/autocomplete_result.dart';
export 'package:google_place/src/autocomplete/prediction.dart';
export 'package:google_place/src/models/input_type.dart';
export 'package:google_place/src/models/lat_lng.dart';
export 'package:google_place/src/models/locationbias.dart';
export 'package:google_place/src/search/find_place_result.dart';

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
