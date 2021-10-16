import 'dart:convert';

import 'package:evento001/infra/models/breed_model.dart';
import 'package:evento001/infra/repositories/cats_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {}

void main() {
  test('Testando a API', () async {
    final CatsRepository _cats = CatsRepository();

    final _result = await _cats.getBreeds();
    print(_result);
  });
}
