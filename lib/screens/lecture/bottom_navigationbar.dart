import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationbarScreen extends StatefulWidget {
  BottomNavigationbarScreen({super.key});

  @override
  State<BottomNavigationbarScreen> createState() =>
      _BottomNavigationbarScreenState();
}

class _BottomNavigationbarScreenState extends State<BottomNavigationbarScreen> {
  int _selectedIndex = 0;

  final screens = [
    Center(
      child: Text("house"),
    ),
    Center(
      child: Text("search"),
    )
  ];

  //tap
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[_selectedIndex]),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          type: BottomNavigationBarType
              .shifting, //이렇게 수정도 가능하고,  3개이상일때부터는 알아서 backgroundColor만 정해주면 자연스럽게 바뀐다
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: "house",
              tooltip: "what are you?",
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.search),
              label: "search",
              tooltip: "what are you?",
              backgroundColor: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
