
import 'package:challenge_ui_plant_app/repository/plantas.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import '../util/util.dart';


class Repository{
  List<Plantas>? _cache;

  Repository(){
    print("Construtor");
  }



  List<Plantas> getListaplantas(){
    print("get Lista");
    _cache ??= generadorLista();
    return _cache!;
  }
/*
*   final int id;
  final String image;
  final String title;
  final String country;
  final int price;
  final bool fav ;
*
* */

  List<Plantas> generadorLista() {
    print("generate note list");
    List<Plantas> listPlantas = [
      Plantas(id: 0 , image: "image", title: "Cacto", country: "Mexico", price: 10, cuidado: "Alto", fav: true),
      Plantas(id: 1 , image: "image", title: "Avenca", country: "Brasil", price: 12, cuidado: "Medio", fav: false),
      Plantas(id: 2 , image: "image", title: "Bambu", country: "Italia", price: 14, cuidado: "Baixo", fav: true),
      Plantas(id: 3 , image: "image", title: "Begônia", country: "França", price: 15, cuidado: "Medio", fav: false),
      Plantas(id: 4 , image: "image", title: "Lambari", country: "Africa", price: 12, cuidado: "Baixo", fav: true),
      Plantas(id: 5 , image: "image", title: "Dália", country: "China", price: 23, cuidado: "Alto", fav: false),
      Plantas(id: 6 , image: "image", title: "Ficus", country: "India", price: 33, cuidado: "Medio", fav: true),
      Plantas(id: 7 , image: "image", title: "Laranjeira", country: "Russia", price: 44, cuidado: "Baixo", fav: false),
      Plantas(id: 8 , image: "image", title: "Rabanete", country: "Portugal", price: 55, cuidado: "Medio", fav: true),
      Plantas(id: 9 , image: "image", title: "Tomateiro", country: "Espanha", price: 2, cuidado: "Alto", fav: false)
    ];


    return listPlantas;
    }

  }


 /* List<Plantas> generadorLista() {
    print("generate note list");
    return List<Plantas>.generate(
        10,(x) => Plantas(
      id: x,
      title: Utils.generateRandomString(10),
      image: Utils.generateRandomString(10),
      country: Utils.generateRandomString(10),
      price: Random().nextInt(10),
      fav:  Utils.generateRandomEnabledState(),
    )
    );
  }*/





