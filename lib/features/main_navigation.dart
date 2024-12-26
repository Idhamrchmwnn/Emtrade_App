import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emtrade_app/core/constants/constants.dart';
import 'package:emtrade_app/features/home/home_page.dart';
import 'package:emtrade_app/features/stockpick/stockpick_page.dart';
import 'package:emtrade_app/features/education/presentation/pages/education_page.dart';
import 'package:emtrade_app/features/analysis/analysis_page.dart';
import 'package:emtrade_app/features/academy/academy_page.dart';

class BasicMainNavigationView extends StatefulWidget {
  const BasicMainNavigationView({Key? key}) : super(key: key);

  @override
  State<BasicMainNavigationView> createState() =>
      _BasicMainNavigationViewState();
}

class _BasicMainNavigationViewState extends State<BasicMainNavigationView> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    StockpickPage(),
    EducationPage(),
    AnalysisPage(),
    AcademyPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.home,
                    size: 24.0,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.sort_up,
                    size: 24.0,
                  ),
                  label: 'Stock Pick',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.rosette,
                    size: 24.0,
                  ),
                  label: 'Education',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.folder,
                    size: 24.0,
                  ),
                  label: 'Analysis',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.book,
                    size: 24.0,
                  ),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: AppColors.mainColor,
              unselectedItemColor: AppColors.colorgrey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              onTap: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }
}
