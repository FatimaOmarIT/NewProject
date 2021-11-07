import 'package:flutter/material.dart';
import 'package:navigation/views/myapp.dart';
import '../../setting/colors.dart';
import '../commingsoon/commingsoon.dart';

class DashboardTabs extends StatefulWidget {
  @override
  _DashboardTabsState createState() => _DashboardTabsState();
}

class _DashboardTabsState extends State<DashboardTabs> {
  late List<StatefulWidget> _screens;
  late int _currentTab;

  @override
  void initState() {
    super.initState();
    _currentTab = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentTab,
        children: _buildScreens(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          openTab(index);
        },
        currentIndex: _currentTab,
        items: [
          _buildTabIcon(0),
          _buildTabIcon(1),
          _buildTabIcon(2),
          _buildTabIcon(3)
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildTabIcon(index) {
    var icon;
    switch (index) {
      case 0:
        icon = Icons.home;
        break;
      case 1:
        icon = Icons.face_outlined;
        break;
      case 2:
        icon = Icons.bookmark;
        break;
      case 3:
        icon = Icons.face;
        break;
      default:
        icon = Icons.home;
        break;
    }
    var _normalIcon =
        Container(child: Icon(icon, size: 24, color: AhotColors.secondary2));
    var _activeIcon =
        Container(child: Icon(icon, size: 24, color: AhotColors.primary));
    return BottomNavigationBarItem(
        title: Text(""), icon: _normalIcon, activeIcon: _activeIcon);
  }

  List<StatefulWidget> _buildScreens() {
    _screens = <StatefulWidget>[
      MyHomePage(
        title: "First Index",
      ),
      ComingSoonPage(),
      ComingSoonPage(),
      MyHomePage(
        title: "Last Index",
      ),
    ];
    return _screens;
  }

  void openTab(int index) {
    setState(() {
      _currentTab = index;
    });
  }
}
