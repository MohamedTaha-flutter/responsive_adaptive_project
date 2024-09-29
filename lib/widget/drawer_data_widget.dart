import 'package:flutter/material.dart';
import 'package:responsive_adaptive_simple_project/modeles/drawer.dart';

class DrawerDataWidget extends StatelessWidget {
  DrawerModel model;

  DrawerDataWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(model.title!),
      leading: model.icon,
    );
  }
}
