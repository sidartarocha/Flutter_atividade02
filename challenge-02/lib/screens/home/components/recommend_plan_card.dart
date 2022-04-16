import 'dart:ffi';

import 'package:challenge_ui_plant_app/constants.dart';
import 'package:challenge_ui_plant_app/screens/detail/plant_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RecomendedPlanCard extends StatelessWidget {
  final String image;
  final String title;
  final String country;
  final int price;
  final bool fav ;
  final Function? onPressed;

  const RecomendedPlanCard({
    Key? key, 
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    this.fav = false,
    this.onPressed,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: screenSize.width * 0.4,
      child: Column(
        children: [
          IconButton(
            icon: fav ? Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined) ,
            color: Colors.red,
            onPressed:(){},),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PlantDetailScreen()),
              );
            },
            child: Ink.image(
                  image:AssetImage(image),
                //fit: BoxFit.cover
              width: 160,
              height: 160,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23)
                )
              ]
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button
                      ),
                      TextSpan(
                        text: country.toUpperCase(),
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5)
                        )
                      )
                    ]
                  )
                ),
                const Spacer(),
                Text(
                  "\$$price",
                  style: Theme.of(context).textTheme.button!.copyWith(color: kPrimaryColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
