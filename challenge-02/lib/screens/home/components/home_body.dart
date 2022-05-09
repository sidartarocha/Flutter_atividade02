import 'dart:ffi';
import 'package:challenge_ui_plant_app/constants.dart';
import 'package:challenge_ui_plant_app/repository/repository.dart';
import 'package:challenge_ui_plant_app/screens/home/bloc/home_bloc.dart';
import 'package:challenge_ui_plant_app/screens/home/components/recomemded_plan_list2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/localization.dart';

import '../../grid/grid_screen.dart';
import 'header_with_searchbox.dart';
import 'title_with_button_row.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);


//  final data =  Repository().getListaplantas();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

     return BlocBuilder<HomeBloc, HomeState>(
       bloc: BlocProvider.of<HomeBloc>(context),
       builder: (context, state) {
        if (state is HomeLoadedState){
          return SingleChildScrollView(
                child: Column(
                  children: [
                    HeaderWithSearchBox(screenSize: screenSize),
                    TitleWithButtonRow(
                      title: 'favoriteplant'.i18n(),
                      buttonText: 'more'.i18n(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  GridScreen(state.listPlantas)),
                        );
                      },
                    ),
                    RecomemdedPlantList2(state.listPlantas),
                    TitleWithButtonRow(
                      title: 'allPlants'.i18n(),
                      buttonText: 'more'.i18n(),
                      onPressed: () {},
                    ),
                     RecomemdedPlantList2(state.listPlantas),
                  ],
                ),
                );

        }

         return CircularProgressIndicator();
       },
     );

    // if (teste.isEmpty) {
    //   return Center(child: CircularProgressIndicator());
    // }else{
    //   return Center(child: CircularProgressIndicator());
    // }

      // SingleChildScrollView(
      // child: Column(
      //   children: [
      //     HeaderWithSearchBox(screenSize: screenSize),
      //     TitleWithButtonRow(
      //       title: 'favoriteplant'.i18n(),
      //       buttonText: 'more'.i18n(),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) =>  GridScreen(data)),
      //         );
      //       },
      //     ),
      //     RecomemdedPlantList2(data),
      //     TitleWithButtonRow(
      //       title: 'allPlants'.i18n(),
      //       buttonText: 'more'.i18n(),
      //       onPressed: () {},
      //     ),
      //      RecomemdedPlantList2(data),
      //   ],
      // ),

  }
}
