import 'package:flutter/material.dart';
import 'package:responsive_adaptive_simple_project/widget/custom_item.dart';

class CustomListTablet extends StatelessWidget {
  const CustomListTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const AspectRatio(
          aspectRatio: 1,
          child: CustomItem(),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 5,
        ),
        itemCount: 15,
      ),
    );
  }
}
