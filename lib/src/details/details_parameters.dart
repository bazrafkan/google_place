class DetailsParameters {
  static Map<String, String> createParameters(
    String apiKEY,
    String placeId,
    String language,
    String region,
    String sessionToken,
    String fields,
  ) {
    Map<String, String> queryParameters = {
      'key': apiKEY,
      'place_id': placeId,
    };

    if (language != null && language != '') {
      var item = {
        'language': language,
      };
      queryParameters.addAll(item);
    }

    if (region != null && region != '') {
      var item = {
        'region': region,
      };
      queryParameters.addAll(item);
    }

    if (sessionToken != null && sessionToken != '') {
      var item = {
        'sessiontoken': sessionToken,
      };
      queryParameters.addAll(item);
    }

    if (fields != null && fields != '') {
      var item = {
        'fields': fields,
      };
      queryParameters.addAll(item);
    }
    return queryParameters;
  }
}
