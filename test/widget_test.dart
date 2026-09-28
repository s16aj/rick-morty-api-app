import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rick_morty_api_app/main.dart';
import 'package:rick_morty_api_app/screens/characters_page.dart';

void main() {
  testWidgets('MyApp shows a loading indicator while fetching characters', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(CharactersPage), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
