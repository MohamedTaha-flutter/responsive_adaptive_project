import 'package:flutter/material.dart';
import 'package:responsive_adaptive_simple_project/widget/sliver_grid_widget.dart';
import 'package:responsive_adaptive_simple_project/widget/sliver_list_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: CustomScrollView(
        slivers: [
          SliverGridWidget(),
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
