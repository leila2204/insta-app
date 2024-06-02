import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta_appl/screens/activity_screen.dart';
import 'package:insta_appl/screens/add_content_screen.dart';
import 'package:insta_appl/screens/home_screen.dart';
import 'package:insta_appl/screens/search_screen.dart';
import 'package:insta_appl/screens/user_profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomnavigationItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedBottomnavigationItem,
            onTap: (int index) {
              setState(() {
                _selectedBottomnavigationItem = index;
              });
            },
            selectedFontSize: 18,
            selectedIconTheme: IconThemeData(
              color: Colors.red,
            ),
            unselectedIconTheme: IconThemeData(color: Colors.white),
            type: BottomNavigationBarType.fixed,
            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            backgroundColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('images/icon_home.png'),
                activeIcon: Image.asset('images/icon_active_home.png'),
                label: 'item1',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/icon_search_navigation.png'),
                activeIcon:
                    Image.asset('images/icon_search_navigation_active.png'),
                label: 'item2',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/icon_add_navigation.png'),
                activeIcon:
                    Image.asset('images/icon_add_navigation_active.png'),
                label: 'item3',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/icon_activity_navigation.png'),
                activeIcon:
                    Image.asset('images/icon_activity_navigation_active.png'),
                label: 'item4',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage('images/profile.png'))),
                ),
                activeIcon: Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage('images/profile.png'))),
                ),
                label: 'item5',
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedBottomnavigationItem,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      HomeScreen(),
      SearchScreen(),
      AddContentScreen(),
      ActivityScreen(),
      UserProfileScreen(),
    ];
  }
}
