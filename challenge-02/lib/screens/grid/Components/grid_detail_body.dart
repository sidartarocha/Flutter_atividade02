import 'package:challenge_ui_plant_app/repository/plantas.dart';
import 'package:challenge_ui_plant_app/screens/home/components/recommend_plan_card_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home/components/recommend_plan_card.dart';

class GridDetailBody extends StatefulWidget {
  List<Plantas> lstplanta;
  GridDetailBody(this.lstplanta, {Key? key}) : super(key: key);

  @override
  State<GridDetailBody> createState() => _GridDetailBodyState();
}

class _GridDetailBodyState extends State<GridDetailBody> {
  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(title),
          ),
          body: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            // Generate 100 widgets that display their index in the List.
            children: [
              for (var element in widget.lstplanta) ...[
                RecomendedPlanCardGrid(
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
        )
    );
  }


}



