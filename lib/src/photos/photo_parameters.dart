class PhotoParameters {
  static Map<String, String> createParameters(
    String apiKEY,
    String photoReference,
    int maxHeight,
    int maxWidth,
  ) {
    Map<String, String> queryParameters = {
      'photoreference': photoReference,
      'key': apiKEY,
    };
    if (maxHeight != null) {
      var item = {
        'maxheight': maxHeight.toString(),
      };
      queryParameters.addAll(item);
    }
    if (maxWidth != null) {
      var item = {
        'maxwidth': maxWidth.toString(),
      };
      queryParameters.addAll(item);
    }
    return queryParameters;
  }
}
