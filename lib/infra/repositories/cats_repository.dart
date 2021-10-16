import 'dart:convert';

import 'package:evento001/infra/models/breed_model.dart';
import 'package:get/get.dart';

class CatsRepository extends GetConnect {
  final base = 'https://api.thecatapi.com/v1';

  final headers = {
    'x-api-key': '267d570e-8d06-429a-ba8a-acb8ae74c679',
    'Content-Type': 'application/json',
  };

  Future<List<BreedModel?>> getBreeds() async {
    final _res = await get(
      '$base/breeds',
      headers: headers,
    );

    if (_res.isOk) {
      return List.from(_res.body.map((e) => BreedModel.fromMap(e)));
    }

    return [];
  }

  Future<List<BreedModel?>> searchBreed(String breedSearch) async {
    final _res = await get(
      '$base/breeds/search',
      query: {'q': breedSearch},
      headers: headers,
    );

    if (_res.isOk) {
      return List.from(_res.body.map((e) => BreedModel.fromMap(e)));
    }
    return [];
  }

  Future<dynamic> saveFavorite(String imageId, String subId) async {
    final _res = await post(
      '$base/',
      json.encode({"image_id": imageId, "sub_id": subId}),
      headers: headers,
    );

    return _res;
  }

  Future<dynamic> getFavorites(int subId,
      {int limit = 10, int page = 1}) async {
    final _res = await get(
      '$base/favourites',
      headers: headers,
      query: {
        'sub_id': subId,
        'limit': limit,
        'page': page,
      },
    );

    return _res;
  }
}
