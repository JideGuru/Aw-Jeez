import 'package:aw_geez/repositories/home_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

main() {
  MockHomeRepository _service = MockHomeRepository();
  Map charaters = {};

  group('Home repository Test', () {
    when(() => _service.getCharacters()).thenAnswer((_) async {
      charaters = {};
      return charaters;
    });


    test("Get characters without errors", () async {
      Map _characters = await _service.getCharacters();
      expect(charaters, _characters);
    });
  });
}
