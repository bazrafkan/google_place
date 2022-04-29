import 'dart:typed_data';

import 'package:google_place/src/utils/network_utility.dart';

class Photos {
  static const _authority = 'maps.googleapis.com';

  static const _unencodedPath = 'maps/api/place/photo';

  final String apiKEY;

  final Map<String, String> headers;

  final String? proxyUrl;

  const Photos(this.apiKEY, this.headers, this.proxyUrl);

  /// The Place Photo service, part of the Places API, is a read- only API that allows you to
  /// add high quality photographic content to your application. The Place Photo service gives
  /// you access to the millions of photos stored in the Places database. When you get place
  /// information using a Place Details request, photo references will be returned for relevant
  /// photographic content. Find Place, Nearby Search, and Text Search requests also return a
  /// single photo reference per place, when relevant. Using the Photo service you can then access
  /// the referenced photos and resize the image to the optimal size for your application.
  ///
  /// [photoReference] Required parameters - A string identifier that uniquely identifies a photo.
  /// Photo references are returned from either a Place Search or Place Details request.
  ///
  /// [minprice] or [maxprice] Required parameters - Specifies the maximum desired height or width,
  /// in pixels, of the image returned by the Place Photos service. If the image is smaller than
  /// the values specified, the original image will be returned. If the image is larger in either
  /// dimension, it will be scaled to match the smaller of the two dimensions, restricted to its
  /// original aspect ratio. Both the maxheight and maxwidth properties accept an integer
  /// between 1 and 1600.
  Future<Uint8List?> get(
    String photoReference,
    int maxHeight,
    int maxWidth,
  ) async {
    assert(photoReference != "");
    final queryParameters = _createParameters(
      apiKEY,
      photoReference,
      maxHeight,
      maxWidth,
    );
    final uri = createUri(
      proxyUrl,
      _authority,
      _unencodedPath,
      queryParameters,
    );
    final response = await fetchUrl(uri, headers: headers);

    if (response != null) {
      List<int> list = response.codeUnits;
      return Uint8List.fromList(list);
    }

    return null;
  }

  /// The Place Photo service, part of the Places API, is a read- only API that allows you to
  /// add high quality photographic content to your application. The Place Photo service gives
  /// you access to the millions of photos stored in the Places database. When you get place
  /// information using a Place Details request, photo references will be returned for relevant
  /// photographic content. Find Place, Nearby Search, and Text Search requests also return a
  /// single photo reference per place, when relevant. Using the Photo service you can then access
  /// the referenced photos and resize the image to the optimal size for your application.
  ///
  /// [photoReference] Required parameters - A string identifier that uniquely identifies a photo.
  /// Photo references are returned from either a Place Search or Place Details request.
  ///
  /// [minprice] or [maxprice] Required parameters - Specifies the maximum desired height or width,
  /// in pixels, of the image returned by the Place Photos service. If the image is smaller than
  /// the values specified, the original image will be returned. If the image is larger in either
  /// dimension, it will be scaled to match the smaller of the two dimensions, restricted to its
  /// original aspect ratio. Both the maxheight and maxwidth properties accept an integer
  /// between 1 and 1600.
  Future<String?> getJson(
    String photoReference,
    int maxHeight,
    int maxWidth,
  ) async {
    assert(photoReference != "");
    final queryParameters = _createParameters(
      apiKEY,
      photoReference,
      maxHeight,
      maxWidth,
    );
    final uri = Uri.https(
      proxyUrl != null && proxyUrl != '' ? proxyUrl! : _authority,
      proxyUrl != null && proxyUrl != ''
          ? 'https://$_authority/$_unencodedPath'
          : _unencodedPath,
      queryParameters,
    );

    return await fetchUrl(uri, headers: headers);
  }

  /// Prepare query Parameters
  Map<String, String> _createParameters(
    String apiKEY,
    String photoReference,
    int? maxHeight,
    int? maxWidth,
  ) {
    Map<String, String> queryParameters = {
      'photoreference': photoReference,
      'key': apiKEY,
      if (maxWidth != null) 'maxwidth': maxWidth.toString(),
      if (maxHeight != null) 'maxheight': maxHeight.toString(),
    };

    return queryParameters;
  }
}
