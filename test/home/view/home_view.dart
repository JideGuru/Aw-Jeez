import 'package:aw_geez/services/rest_service.dart';
import 'package:aw_geez/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class MockRestService extends Mock implements RestService {}

main() {
  MockRestService _service = MockRestService();
  var appNameText = find.byKey(const Key('app-name'));
  Map charaters = {};

  Widget _makeTestable(Widget child) {
    return ProviderScope(
      child: MaterialApp(
        home: child,
      ),
    );
  }

  group('Auth Service Test', () {
    when(() => _service.getCharacters()).thenAnswer((_) async {
      charaters = {};
      return charaters;
    });

    testWidgets('Widgets are found', (WidgetTester tester) async {
      await tester.pumpWidget(_makeTestable(const Home()));
      expect(appNameText, findsOneWidget);
    });
  });
}
