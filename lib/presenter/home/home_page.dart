import 'package:evento001/presenter/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          'Conheça o gato perfeito para você',
          style: Get.textTheme.bodyText1!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan[300],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey.shade200,
              Colors.grey.shade100,
              Colors.grey.shade100,
              Colors.cyan.shade100,
              Colors.cyan.shade200,
              Colors.cyan.shade300,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 08,
                      ),
                      child: Text(
                        'As raças mais pesquisadas',
                        maxLines: 1,
                        style: Get.textTheme.bodyText2!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.040,
                      child: GetBuilder<HomeController>(builder: (_) {
                        if (controller.isLoading) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }

                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.getCatNames().length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(left: 07),
                                child: Card(
                                  elevation: 2,
                                  shape: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 02,
                                      horizontal: 05,
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 05,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(08),
                                    ),
                                    child: Text(
                                      controller.getCatNames()[index],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 08),
              child: Text(
                'Os Mais Vistos da Semana',
                maxLines: 1,
                style: Get.textTheme.bodyText2!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Expanded(
              child: Align(
                child: Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  height: Get.height * 0.10,
                  child: GetBuilder<HomeController>(
                    builder: (_) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.catLimitImages.length >= 10
                            ? 10
                            : controller.catLimitImages.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: Get.width * 0.20,
                              margin: const EdgeInsets.only(left: 05),
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 05,
                                ),
                                decoration: BoxDecoration(
                                  //color: Colors.white,
                                  borderRadius: BorderRadius.circular(08),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      controller.catLimitImages[index],
                                    ),
                                  ),
                                ),
                                // child: Image.network(
                                //   controller.getCatImages()[index],
                                //   fit: BoxFit.cover,
                                // ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 08),
              child: Text(
                'Clique no Gato abaixo e veja mais detalhes sobre seu proximo Gato',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: Get.textTheme.bodyText2!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.20,
              width: Get.width * 0.95,
              child: GetBuilder<HomeController>(
                builder: (_) {
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.breeds.length >= 10
                          ? 10
                          : controller.breeds.length,
                      itemBuilder: (context, index) {
                        final cat = controller.breeds[index];
                        return SizedBox(
                          width: Get.width * 0.80,
                          child: Card(
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsetsDirectional.all(08),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: Get.height * 0.20,
                                        width: Get.width * 0.27,
                                        child: Image.network(
                                          cat!.image!.url!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(width: 07),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Raça: ${cat.name}",
                                            style: Get.textTheme.headline1!
                                                .copyWith(),
                                          ),
                                          Text(
                                            "Origem: ${cat.origin} ",
                                            style: Get.textTheme.headline1!
                                                .copyWith(),
                                          ),
                                          Text(
                                            "Afeição com Crianças: ${cat.child_friendly}",
                                            style: Get.textTheme.headline1!
                                                .copyWith(),
                                          ),
                                          Text(
                                            "Energia: ${cat.energy_level}",
                                            style: Get.textTheme.headline1!
                                                .copyWith(),
                                          ),
                                          Text(
                                            "Peso: ${cat.weight?.imperial}",
                                            style: Get.textTheme.headline1!
                                                .copyWith(),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 14),
                      child: Text(
                        'Clique e veja mais fotos ',
                        style: Get.textTheme.headline1!.copyWith(),
                      ),
                    ),
                    IconButton(
                      onPressed: controller.refreshImageCatRandom,
                      icon: const Icon(
                        Icons.refresh,
                        color: Colors.green,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                  child: Card(
                    elevation: 2,
                    shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GetBuilder<HomeController>(
                      builder: (_) {
                        if (controller.isLoading) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }

                        if (controller.imageCatRandom.isEmpty) {
                          return Container();
                        }

                        return Container(
                          height: Get.height * 0.30,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                controller.imageCatRandom,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
