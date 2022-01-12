import 'package:aw_geez/services/rest_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRestService extends Mock implements RestService {}

main() {
  MockRestService _service = MockRestService();
  Map charaters = {};

  group('Auth Service Test', () {
    when(() => _service.getCharacters()).thenAnswer((_) async {
      charaters = {};
      return charaters;
    });


    test("Login with email and password", () async {
      Map _characters = await _service.getCharacters();
      expect(charaters, _characters);
    });
  });
}
