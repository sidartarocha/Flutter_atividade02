
import 'package:challenge_ui_plant_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../repository/plantas.dart';

class PlantDetailBody extends StatefulWidget {
  Plantas planta;
  PlantDetailBody(this.planta, {Key? key}) : super(key: key);

  @override
  State<PlantDetailBody> createState() => _PlantDetailBodyState();
}

class _PlantDetailBodyState extends State<PlantDetailBody> {




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detalhes'),
        ),
    body: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Nome: ' + widget.planta.title.toUpperCase() + '\n' ,
                                  style: Theme.of(context).textTheme.headline5
                              ),
                              TextSpan(
                                  text: 'Preço: ' + widget.planta.price.toString() ,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: kPrimaryColor
                                  )
                              ),
                              TextSpan(
                                  text: 'Descrição: ' + widget.planta.country ,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: kPrimaryColor
                                  )
                              ),
                            ]
                        )
                    ),]
              )
            ),

            Container(
              height: size.height * 0.6,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29)
                  )
                ],
                image: const DecorationImage(
                  image: AssetImage("assets/images/img.png"),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ],
        ),
        Row(
            children: [
              RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Pais: ' + widget.planta.country ,
                            style: const TextStyle(
                                fontSize: 16,
                                color: kPrimaryColor
                            )
                        ),
                        TextSpan(
                            text: 'Nivel de Cuidado: ' + widget.planta.title,
                            style: const TextStyle(
                                fontSize: 16,
                                color: kPrimaryColor
                            )
                        )
                      ]
                  )
              ),]
        ),
        const Spacer(),
        Row(
          children: [
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: ElevatedButton(
                child: const Text("Buy Now"),
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20)
                    )
                  )
                ),
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('A funcionalidade de compra não foi implementada'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
            ),


          ],
        )
      ],
    )
    );
  }
}