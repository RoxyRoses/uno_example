import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:uno/uno.dart';
import 'package:uno_example/features/get/domain/entities/request_entity.dart';
import 'package:uno_example/features/post/external/datasources/send_post_datasource_impl.dart';

import '../../../../utils/api_response.dart';

class MockUno extends Mock implements Uno {}

void main() {
  final uno = MockUno();
  final dataSource = SendPostDataSource(uno);
  final entity = RequestEntity(body: 'Hello', title: 'post test');

  group(SendPostDataSource, () {
    test('Should use a post method', (() async {
      final request = Request(
        headers: const {'test': 'test'},
        method: 'post',
        timeout: const Duration(seconds: 30),
        uri: Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );

      when((() => uno.post(any()))).thenAnswer(
        (_) async => Response(
          headers: const {'test': 'test'},
          request: request,
          status: 200,
          data: jsonDecode(postResponse),
        ),
      );
      expect(dataSource.postTest(entity), completes);
    }));
  });
}
