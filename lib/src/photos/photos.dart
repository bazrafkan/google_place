import 'dart:typed_data';

import 'package:google_place/src/photos/photo_parameters.dart';
import 'package:google_place/src/utils/network_utility.dart';

class Photos {
  final _authority = 'maps.googleapis.com';
  final _unencodedPath = 'maps/api/place/photo';
  final String apiKEY;

  Photos(this.apiKEY);

  Future<Uint8List> get(
    String photoReference, {
    int maxHeight,
    int maxWidth,
  }) async {
    var queryParameters = PhotoParameters.createParameters(
      apiKEY,
      photoReference,
      maxHeight,
      maxWidth,
    );
    var uri = Uri.https(_authority, _unencodedPath, queryParameters);
    var response = await NetworkUtility.fetchUrl(uri);
    if (response != null) {
      List<int> list = response.codeUnits;
      return Uint8List.fromList(list);
    } else {
      return null;
    }
  }
}
