import 'package:flutter_test/flutter_test.dart';
import 'package:google_place/google_place.dart';

void main() {
  test('init', () async {
    String apiKey = "Your-Key";
    var googlePlace = GooglePlace(apiKey);
    expect(googlePlace.apiKEY, apiKey);
    expect(googlePlace.search.apiKEY, apiKey);
    expect(googlePlace.details.apiKEY, apiKey);
    expect(googlePlace.photos.apiKEY, apiKey);
    expect(googlePlace.autocomplete.apiKEY, apiKey);
    expect(googlePlace.queryAutocomplete.apiKEY, apiKey);
  });
}
