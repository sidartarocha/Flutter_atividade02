import 'package:challenge_ui_plant_app/repository/plantas.dart';
import 'package:challenge_ui_plant_app/screens/detail/components/plant_detail_body.dart';
import 'package:flutter/material.dart';

class PlantDetailScreen extends StatefulWidget {
  Plantas planta;
  PlantDetailScreen(this.planta, {Key? key}) : super(key: key);
  @override
  State<PlantDetailScreen> createState() => _PlantDetailScreenState();
}

class _PlantDetailScreenState extends State<PlantDetailScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlantDetailBody(widget.planta),
    );
  }
}