import 'package:flutter/material.dart';
import 'package:funmovie/Screens/Movies/Movies.dart';
import 'package:funmovie/Screens/Trending/trending.dart';

import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  int navbarIndex = 1;

  onNavbarItemTap(int index) {
    navbarIndex = index;
    update();
  }

  List<Widget> _homePages = [Movies(), Trending()];

  Widget get homePage => _homePages[navbarIndex];
}
