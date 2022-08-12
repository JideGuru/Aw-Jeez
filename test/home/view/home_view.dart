import 'package:aw_geez/repositories/home_repository.dart';
import 'package:aw_geez/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

main() {
  MockHomeRepository _service = MockHomeRepository();
  var appNameText = find.byKey(const Key('app-name'));
  Map characters = {};

  Widget _makeTestable(Widget child) {
    return ProviderScope(
      child: MaterialApp(
        home: child,
      ),
    );
  }

  group('Widget test', () {
    when(() => _service.getCharacters()).thenAnswer((_) async {
      characters = {};
      return characters;
    });

    testWidgets('Home Widget is found', (WidgetTester tester) async {
      await tester.pumpWidget(_makeTestable(const Home()));
      expect(appNameText, findsOneWidget);
    });
  });
}
