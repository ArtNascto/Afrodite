import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'products.dart';
import 'calendar.dart';
import 'home.dart';
import 'add_product.dart';
import 'profile.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<Menu> {
  int _selectedIndex = 0;
  final _pageController = PageController(initialPage: 0);
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  final List<Widget> _pages = [
    Products(),
    Calendar(),
    Home(),
    AddProduct(),
    Profile(),
  ];

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      {required String label, required String iconPath, required int index}) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Colors.white : Colors.transparent,
          // Cor condicional corrigida
          borderRadius: BorderRadius.circular(10),
        ),
        child: ImageIcon(
          AssetImage(iconPath),
          size: 24,
        ),
      ),
      label: label,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(_pages.length, (index) => _pages[index]),
        ),
        extendBody: true,
        bottomNavigationBar: AnimatedNotchBottomBar(
          removeMargins: true,
          notchBottomBarController: _controller,
          color: Colors.white,
          textOverflow: TextOverflow.visible,
          maxLine: 1,
          elevation: 0,
          shadowElevation: 5,
          kBottomRadius: 28.0,
          showBottomRadius: false,
          notchColor: const Color(0xFFD2A496),

          /// restart app if you change removeMargins
          showShadow: false,
          durationInMilliSeconds: 300,
          itemLabelStyle: const TextStyle(fontSize: 10),
          bottomBarItems: const [
            BottomBarItem(
              inActiveItem: ImageIcon(
                AssetImage('assets/images/icons/product.png'),
                size: 24,
                color: const Color(0xFFD2A496),
              ),
              activeItem: ImageIcon(
                AssetImage('assets/images/icons/product.png'),
                size: 24,
                color: Colors.white,
              ),
            ),
            BottomBarItem(
              inActiveItem: Icon(
                Icons.calendar_today,
                color: const Color(0xFFD2A496),
              ),
              activeItem: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
            ),
            BottomBarItem(
              inActiveItem: Icon(
                Icons.home,
                color: const Color(0xFFD2A496),
              ),
              activeItem: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            BottomBarItem(
              inActiveItem: Icon(
                Icons.add,
                color: const Color(0xFFD2A496),
              ),
              activeItem: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            BottomBarItem(
              inActiveItem: Icon(
                Icons.person,
                color: const Color(0xFFD2A496),
              ),
              activeItem: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
          onTap: (index) {
            _pageController.jumpToPage(index);
          },
          kIconSize: 24.0,
        ));
  }
}
