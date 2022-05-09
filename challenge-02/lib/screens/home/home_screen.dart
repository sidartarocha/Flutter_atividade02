import 'package:challenge_ui_plant_app/constants.dart';
import 'package:challenge_ui_plant_app/repository/repository.dart';
import 'package:challenge_ui_plant_app/screens/home/bloc/home_bloc.dart';
import 'package:challenge_ui_plant_app/screens/home/components/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localization/localization.dart';

import '../../repository/plantas.dart';
import 'components/home_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);
  Repository repo = Repository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MultiBlocProvider(
        providers:[
          BlocProvider(
            create: (context) => HomeBloc()..add(HomeLoadList(listPlants: repo.generadorLista()))
          ),
        ], child:  HomeBody(),
      ),

      // body: BlocProvider<HomeBloc>(
      //   create: (BuildContext context) => HomeBloc(HomeLoadingState())..add(HomeLoadList()),
      //   child: HomeBody(),
      // )
      //HomeBody(),
      //bottomNavigationBar: HomeBottomNagivationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Text('plantApp'.i18n(),style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
             ),
           ),
           );

        /*leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {}
        ),
      );*/
  }
}

