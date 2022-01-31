import 'package:flutter/material.dart';
import 'package:slobbr_app/screens/account_screen.dart';
import 'package:slobbr_app/screens/favorite_screen.dart';
import 'package:slobbr_app/screens/home.dart';
import 'package:slobbr_app/widgets/icon_badge.dart';
import 'package:slobbr_app/screens/map_screen.dart';
import 'package:slobbr_app/screens/chat_screens/chat_main_screen.dart';
import 'package:slobbr_app/screens/login_screen.dart';
import 'package:slobbr_app/utils/utils.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    SlobbrPreferences prefs = new SlobbrPreferences();

    if(!prefs.getPref("JWT", prefs.getPrefs())){
      Navigator.of(context).push(
          MaterialPageRoute(
              builder: (BuildContext context) {
                return const LoginScreen();
              });
    }

    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[
          Home(),
          MapScreen(),
          FavoriteScreen(),
          ChatMainScreen(),
          AccountScreen()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 7.0),
            barIcon(icon: Icons.home, page: 0),
            barIcon(icon: Icons.place, page: 1,),
            barIcon(icon: Icons.favorite, page: 2),
            barIcon(icon: Icons.mode_comment, page: 3, badge: true),
            barIcon(icon: Icons.person, page: 4),
            SizedBox(width: 7.0),
          ],
        ),
        color: Theme.of(context).colorScheme.surface,
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  Widget barIcon(
      {IconData icon = Icons.home, int page = 0, bool badge = false}) {
    return IconButton(
      icon: badge ? IconBadge(icon: icon, size: 24.0) : Icon(icon, size: 24.0),
      color:
      _page == page ? Color(0xFF90A4AE) : Theme.of(context).colorScheme.onSurface,
      onPressed: () => _pageController.jumpToPage(page),
    );
  }
}