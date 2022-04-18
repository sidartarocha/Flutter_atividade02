import 'package:challenge_ui_plant_app/repository/plantas.dart';
import 'package:flutter/material.dart';

import 'recommend_plan_card.dart';

class RecomemdedPlantList2 extends StatefulWidget {

 List<Plantas> lstPlantas;
  // RecomemdedPlantList2(this.lstPlantas, {Key? key}) : super(key: key);
  RecomemdedPlantList2(this.lstPlantas);
  @override
  State<StatefulWidget> createState() => _RecomemdedPlantList2State();
}

class _RecomemdedPlantList2State extends State<RecomemdedPlantList2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [

        for (var element in widget.lstPlantas) ...[
        RecomendedPlanCard(
        image: "assets/images/image_1.png",
        title: element.title,
        country: element.country,
        price: element.price,
        fav: element.fav,
        elem: element,
        ),
        ],

        ],
      ),
    );
  }
}