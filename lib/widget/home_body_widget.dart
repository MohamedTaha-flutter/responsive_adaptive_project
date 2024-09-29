import 'package:flutter/material.dart';
import 'package:responsive_adaptive_simple_project/widget/sliver_grid_widget.dart';
import 'package:responsive_adaptive_simple_project/widget/sliver_list_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: LayoutBuilder(builder: (context, constrains) {
              print(constrains.maxWidth);
              if (constrains.maxWidth >= 600) {
                return Text("Taplet Layout");
              }else 
              {
                return SliverGridWidget();
              }
            }),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverListWidget()
        ],
      ),
    );
  }
}
