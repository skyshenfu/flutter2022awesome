import 'package:flutter/material.dart';
import 'package:flutter2022awesome/pages/class_tab_page.dart';
import 'package:flutter2022awesome/pages/mine_tab_page.dart';
import 'package:flutter2022awesome/pages/study_tab_page.dart';

import '../utils/OverScrollBehavior.dart';

class MainPage extends StatefulWidget{
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() =>_MainPageState();


  
}

class _MainPageState extends State<MainPage>{
  final pages = <Widget>[
    ClassTabPage(),
    StudyTabPage(),
    MineTabPage()
  ];

  int ? _tabIndex;
  PageController ? _pageController;
  @override
  void initState() {
    super.initState();
    _tabIndex = 0;
    _pageController = PageController(initialPage: _tabIndex!);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          bottom: false,
          child:   ScrollConfiguration(
            behavior: OverScrollBehavior(),
            child: PageView(
            controller: _pageController,
            children: pages,
            onPageChanged: _pageChangeMethod,
          ),
          )
         ,
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Image(image: AssetImage("assets/image/tabicon/home_tab_class_n.png"),width: 50,height: 50), label: (""),activeIcon:
          Image(image: AssetImage("assets/image/tabicon/home_tab_class_s.png"),width: 50,height: 50)),
          BottomNavigationBarItem(icon: Image(image: AssetImage("assets/image/tabicon/home_tab_study_n.png"),width: 50,height: 50), label: (""),activeIcon:
          Image(image: AssetImage("assets/image/tabicon/home_tab_study_s.png"),width: 50,height: 50)),
          BottomNavigationBarItem(icon: Image(image: AssetImage("assets/image/tabicon/home_tab_me_n.png"),width: 50,height: 50), label: (""),activeIcon:
          Image(image: AssetImage("assets/image/tabicon/home_tab_me_s.png"),width: 50,height: 50)
          )
        ],
        onTap: _tapTab,
        fixedColor: Colors.lightBlue,
        currentIndex: _tabIndex!,
      ),
    );
  }
  void _pageChangeMethod(int value) {
    setState(() {
      _tabIndex = value;
    });
  }
  

  void _tapTab(int value) {
    setState(() {
      _tabIndex = value;
    });
    _pageController!.jumpToPage(value);
  }
}