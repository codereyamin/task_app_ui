import 'package:flutter/material.dart';
import 'package:task_app_ui/utils.dart/custom_colors.dart';

import 'home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> bodyContent = [
    HoomePage(),
    Center(
      child: Text("search"),
    ),
    Center(
      child: Text("record"),
    ),
    Center(
      child: Text("saved"),
    ),
    Center(
      child: Text("settings"),
    ),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffoldBackgrundColor,
      body: bodyContent[_currentIndex],
      bottomNavigationBar: Container(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: BottomNavigationBar(
              selectedItemColor: CustomColors.selectNavTextColor,
              unselectedItemColor: CustomColors.unselectNavTextColor,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex: _currentIndex,
              onTap: (value) => setState(() {
                    _currentIndex = value;
                  }),
              items: [
                customBottomnavigationBarItem("Home", "images/icons/Home.png"),
                customBottomnavigationBarItem(
                    "Saved", "images/icons/saved.png"),
                customBottomnavigationBarItem(
                    "Search", "images/icons/Search.png"),
                customBottomnavigationBarItem(
                    "Settings", "images/icons/setting.png"),
                customBottomnavigationBarItem(
                    "Record", "images/icons/Video.png"),
              ]),
        ),
      ),
    );
  }

  BottomNavigationBarItem customBottomnavigationBarItem(
    String iconName,
    String loacation,
  ) {
    return BottomNavigationBarItem(
        icon: Image.asset(loacation),
        label: iconName,
        activeIcon: ShaderMask(
          child: Image.asset(loacation),
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              colors: [Color(0xff042E2B), Color(0xff2C8877)],
              stops: [
                0.0,
                0.5,
              ],
            ).createShader(bounds);
          },
        ));
  }
}
