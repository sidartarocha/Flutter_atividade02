import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:challenge_ui_plant_app/repository/plantas.dart';
import 'package:challenge_ui_plant_app/repository/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeLoadingState()){
    on<HomeLoadList>(_onLoadList);
    on<HomeUpdateList>(_onUpdateList);
  }

  Repository repo = Repository();




  // Stream<HomeState?> mapEventToState(HomeEvent event) async*{
  //    var state;
  //    switch (event.runtimeType) {
  //     case HomeCarregarList:
  //       state = await _carregaLista();
  //       break;
  //     default:
  //       break;
  //     }
  //     yield state;
  // }

    // Future<HomeState> _carregaLista() async {
    //   List<Plantas> listPlants = await
    //   Future.delayed(
    //       Duration(
    //         seconds: 1,),
    //       () => <Plantas>[
    //         Plantas(id: 0 , image: "image", title: "Cacto", country: "Mexico", price: 10, cuidado: "Alto", fav: true),
    //         Plantas(id: 1 , image: "image", title: "Avenca", country: "Brasil", price: 12, cuidado: "Medio", fav: false),
    //         Plantas(id: 2 , image: "image", title: "Bambu", country: "Italia", price: 14, cuidado: "Baixo", fav: true),
    //         Plantas(id: 3 , image: "image", title: "Begônia", country: "França", price: 15, cuidado: "Medio", fav: false),
    //         Plantas(id: 4 , image: "image", title: "Lambari", country: "Africa", price: 12, cuidado: "Baixo", fav: true),
    //         Plantas(id: 5 , image: "image", title: "Dália", country: "China", price: 23, cuidado: "Alto", fav: false),
    //         Plantas(id: 6 , image: "image", title: "Ficus", country: "India", price: 33, cuidado: "Medio", fav: true),
    //         Plantas(id: 7 , image: "image", title: "Laranjeira", country: "Russia", price: 44, cuidado: "Baixo", fav: false),
    //         Plantas(id: 8 , image: "image", title: "Rabanete", country: "Portugal", price: 55, cuidado: "Medio", fav: true),
    //         Plantas(id: 9 , image: "image", title: "Tomateiro", country: "Espanha", price: 2, cuidado: "Alto", fav: false)
    //       ],
    //   );
    //   return HomeLoadedState(listPlantas: listPlants);
    // }

  void _onLoadList(HomeLoadList event, Emitter<HomeState> emit) {
    emit(
        HomeLoadedState(listPlantas: event.listPlants),
      );
  }

  void _onUpdateList(HomeUpdateList event, Emitter<HomeState> emit) {}

}








