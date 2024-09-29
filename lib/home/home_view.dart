import 'package:flutter/material.dart';
import 'package:responsive_adaptive_simple_project/widget/custom_drwer_widget.dart';
import 'package:responsive_adaptive_simple_project/widget/home_body_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () => scaffoldKey.currentState!.openDrawer(),
            icon: const Icon(Icons.menu, color: Colors.white)),
      ),
      backgroundColor: const Color(0xffDBDBDB),
      body: const HomeBodyWidget(),
    );
  }
}
