import 'package:flutter_test/flutter_test.dart';
import 'package:google_place/google_place.dart';

void main() {
  test(
    'Should create LocationBias instance '
    'by specifying a LatLon point and assert ipBias is null',
    () {
      final expectedPoint = LatLon(0, 0);
      final locationBias = Locationbias(point: expectedPoint);
      expect(locationBias.ipbias, isNull);
      expect(locationBias.point, isNotNull);
      expect(locationBias.point, expectedPoint);
    },
  );

  test(
    'Should create LocationBias instance '
    'by specifying a Circular point and assert ipBias is null',
    () {
      final Circular expectedPoint = Circular(10, LatLon(0, 0));
      final locationBias = Locationbias(circular: expectedPoint);
      expect(locationBias.ipbias, isNull);
      expect(locationBias.circular, isNotNull);
      expect(locationBias.circular, expectedPoint);
    },
  );

  test(
    'Should create LocationBias instance '
    'by specifying a Rectangular point and assert ipBias is null',
    () {
      final Rectangular expectedPoint = Rectangular(
        LatLon(-10, -10),
        LatLon(10, 10),
      );
      final locationBias = Locationbias(rectangular: expectedPoint);
      expect(locationBias.ipbias, isNull);
      expect(locationBias.rectangular, isNotNull);
      expect(locationBias.rectangular, expectedPoint);
    },
  );
}
