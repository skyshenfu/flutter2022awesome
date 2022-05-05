import 'package:flutter/material.dart';
import 'package:flutter2022awesome/pages/home_page.dart';

class MainPage extends StatefulWidget{
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() =>_MainPageState();


  
}

class _MainPageState extends State<MainPage>{
  final pages = <Widget>[
    MyHomePage(),
    MyHomePage(),
    MyHomePage()
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
          child: PageView(
          controller: _pageController,
          children: pages,
          onPageChanged: _pageChangeMethod,
        ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.adb), label: ("tab1")),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo), label: ("tab2")),
          BottomNavigationBarItem(icon: Icon(Icons.description), label: ("tab3"))
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