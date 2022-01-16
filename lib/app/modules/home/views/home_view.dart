import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:travel_app/app/core/constants.dart';
import 'package:travel_app/app/modules/home/widgets/body.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      drawer: Drawer(),
      body: HomeBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: kIconColor),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: <IconButton>[
        IconButton(
            onPressed: () {},
            icon: ClipOval(child: Image.asset("assets/images/profile.png")))
      ],
    );
  }
}
