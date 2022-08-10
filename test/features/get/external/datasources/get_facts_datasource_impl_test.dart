import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:uno/uno.dart';
import 'package:uno_example/features/get/external/datasources/get_facts_datasource_impl.dart';

import '../../../../utils/api_response.dart';

class MockUno extends Mock implements Uno {}

void main() {
  final uno = MockUno();
  final dataSource = GetFactsDataSource(uno);

  group(GetFactsDataSource, () {
    test('Should return a list of cat facts', (() async {
      final request = Request(
        headers: const {'test': 'test'},
        method: 'get',
        timeout: const Duration(seconds: 30),
        uri: Uri.parse('https://catfact.ninja/fact'),
      );

      when((() => uno.get(any()))).thenAnswer(
        (_) async => Response(
          headers: const {'test': 'test'},
          request: request,
          status: 200,
          data: jsonDecode(api),
        ),
      );

      final result = dataSource.getFacts();
      expect(result, completes);
    }));
  });
}
