import 'package:flutter/material.dart';

class SliverListWidget extends StatelessWidget {
  const SliverListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (BuildContext context, int index) {
        return Container(
            height: MediaQuery.sizeOf(context).height / 10,
            // Set a height for list items
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
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 8,
      ),
      itemCount: 10,
    );
  }
}
