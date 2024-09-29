import 'package:flutter/material.dart';
import 'package:responsive_adaptive_simple_project/modeles/drawer.dart';
import 'package:responsive_adaptive_simple_project/widget/drawer_data_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 100,
              color: Colors.red,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => DrawerDataWidget(
                    model: drawerData[index],
                  ),
            itemCount: drawerData.length,
          ),
        ],
      ),
    );
  }
}

List<DrawerModel> drawerData =
[
  DrawerModel(icon: const Icon(Icons.home), title: "D A S H B O A R A D"),
  DrawerModel(icon: const Icon(Icons.settings), title: "S E T T I N G"),
  DrawerModel(icon: const Icon(Icons.info), title: "A B O U T "),
  DrawerModel(icon: const Icon(Icons.logout), title: "L O G O U T"),
] ;


