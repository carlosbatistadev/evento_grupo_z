import 'dart:math';

import 'package:evento001/infra/models/breed_model.dart';
import 'package:evento001/infra/repositories/cats_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final CatsRepository _repository;

  HomeController(this._repository);

  @override
  void onInit() {
    fetchApi();
    super.onInit();
  }

  List<BreedModel?> breeds = [];

  Future fetchApi() async {
    _changeIsLoading(true);

    try {
      breeds = await _repository.getBreeds();
      getCatImages();
      refreshImageCatRandom();
    } catch (e) {
      Get.rawSnackbar(
        title: 'Não foi possível obter gatos',
        message: '$e',
      );
    }

    _changeIsLoading(false);
  }

  List<String> getCatNames() {
    final List<BreedModel?> catsWithNames = breeds.where(
      (e) {
        return e != null && e.image != null && e.image!.url != null;
      },
    ).toList();

    return catsWithNames.map((e) => e!.name!).toList();
  }

  List<String> catLimitImages = [];
  List<String> catImages = [];
  void getCatImages() {
    List<BreedModel?> catsWithImages = [];

    for (int index = 0; index < breeds.length; index++) {
      if (breeds[index] != null &&
          breeds[index]!.image != null &&
          breeds[index]!.image!.url != null) {
        catsWithImages.add(breeds[index]);
      }
    }

    breeds = breeds.sublist(11);

    catLimitImages =
        catsWithImages.sublist(0, 10).map((e) => e!.image!.url!).toList();
    catImages = catsWithImages.map((e) => e!.image!.url!).toList();
  }

  String imageCatRandom = '';
  refreshImageCatRandom() {
    final random = Random().nextInt(catImages.length);
    imageCatRandom = catImages[random];

    update();
  }

  bool isLoading = false;
  void _changeIsLoading(bool value) {
    isLoading = value;
    update();
  }
}
