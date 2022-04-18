
import 'package:challenge_ui_plant_app/repository/plantas.dart';
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
  }


}


