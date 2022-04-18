import 'dart:ffi';
import 'package:challenge_ui_plant_app/constants.dart';
import 'package:challenge_ui_plant_app/repository/plantas.dart';
import 'package:challenge_ui_plant_app/repository/repository.dart';
import 'package:challenge_ui_plant_app/screens/home/components/recomemded_plan_list2.dart';
import 'package:challenge_ui_plant_app/screens/home/components/recommend_plan_card.dart';
import 'package:flutter/material.dart';

import '../../grid/grid_screen.dart';
import 'header_with_searchbox.dart';
import 'recomemded_plan_list.dart';
import 'title_with_button_row.dart';

class HomeBody extends StatefulWidget {

  HomeBody( {Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  final data =  Repository().getListaplantas();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(screenSize: screenSize),
          TitleWithButtonRow(
            title: "Favorite Plants",
            buttonText: "More",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  GridScreen(data)),
              );
            },
          ),
          RecomemdedPlantList2(data),
          TitleWithButtonRow(
            title: "All Plants",
            buttonText: "More",
            onPressed: () {},
          ),
           RecomemdedPlantList2(data),
        ],
      ),
    );
  }
}
