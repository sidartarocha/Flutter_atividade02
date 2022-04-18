import 'package:challenge_ui_plant_app/repository/plantas.dart';
import 'package:challenge_ui_plant_app/screens/grid/Components/grid_detail_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class GridScreen extends StatefulWidget {
  List<Plantas> lstplanta;
  GridScreen(this.lstplanta, {Key? key}) : super(key: key);

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridDetailBody(widget.lstplanta),
    );
  }
}

