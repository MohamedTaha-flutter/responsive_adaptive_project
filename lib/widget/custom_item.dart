import 'package:flutter/material.dart';


class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffB4B4B4),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ));
  }
}
