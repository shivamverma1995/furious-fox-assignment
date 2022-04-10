import 'package:flutter/material.dart';
import 'package:furious_fox_assignment/views/center_column.dart';
import 'package:furious_fox_assignment/views/custom_appbar.dart';
import 'package:furious_fox_assignment/views/left_column.dart';
import 'package:furious_fox_assignment/views/right_column.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(AssignmentApp());
}

class AssignmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "Lato"),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(
            flex: 1,
          ),
          Flexible(flex: 3, fit: FlexFit.tight, child: LeftColumn()),
          // SizedBox(width: 30),
          SizedBox(
            width: 10,
          ),
          Flexible(flex: 6, fit: FlexFit.tight, child: CenterColumn()),
          // SizedBox(width: 30),
          SizedBox(
            width: 10,
          ),

          Flexible(flex: 3, fit: FlexFit.tight, child: RightColumn()),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
