import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPageView extends StatelessWidget {
  const SecondPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 75),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: Get.height * 0.30,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          RowData(title: 'Raça', info: 'algo aqui'),
          RowData(title: 'Origem', info: 'algo aqui'),
          RowData(title: 'Energia', info: 'algo aqui'),
          RowData(title: 'Descrição', info: 'algo aqui'),
          RowData(title: 'Temperamento', info: 'algo aqui'),
          RowData(title: 'Afeição com Crianças', info: 'algo aqui'),
        ],
      ),
    );
  }
}

class RowData extends StatelessWidget {
  final String title;
  final String info;

  const RowData({
    Key? key,
    required this.title,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: Get.width,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
                Get.textTheme.headline1!.copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            info,
            style: Get.textTheme.headline1!.copyWith(),
          ),
        ],
      ),
    );
  }
}
