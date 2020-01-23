import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:chat_flutter_firebase/app/shared/repositories/firestore_repository.dart';
casa
class MockClient extends Mock implements Dio {}

void main() {
  FirestoreRepository repository;
  MockClient client;

  setUp(() {
    repository = FirestoreRepository();
    client = MockClient();
  });

  group('FirestoreRepository Test', () {
    test("First Test", () {
      expect(repository, isInstanceOf<FirestoreRepository>());
    });

    test('returns a Post if the http call completes successfully', () async {
      when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
          .thenAnswer((_) async =>
              Response(data: {'title': 'Test'}, statusCode: 200));
      Map<String, dynamic> data = await repository.fetchPost(client);
      expect(data['title'], 'Test');
    });

  });
}
  