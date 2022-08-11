import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:uno/uno.dart';
import 'package:uno_example/features/get/domain/entities/post_entity.dart';
import 'package:uno_example/features/get/external/datasources/send_delete_datasource_impl.dart';

import '../../../../utils/api_response.dart';

class MockUno extends Mock implements Uno {}

void main() {
  final uno = MockUno();
  final dataSource = SendDeleteDataSource(uno);
   final entity = PostEntity(body: 'Hello', title: 'post test', id: 1);

  group(SendDeleteDataSource, () {
    test('Should use a delete method', (() async {
      final request = Request(
        headers: const {'test': 'test'},
        method: 'delete',
        timeout: const Duration(seconds: 30),
        uri: Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
      );

      when((() => uno.delete(any()))).thenAnswer(
        (_) async => Response(
          headers: const {'test': 'test'},
          request: request,
          status: 200,
          data: jsonDecode(api),
        ),
      );

      final result = dataSource.sendDelete(entity);
      expect(result, completes);
    }));
  });
}
