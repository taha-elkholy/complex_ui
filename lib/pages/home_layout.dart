import 'package:complex_ui/core/style/colors.dart';
import 'package:complex_ui/pages/favorites/favorites_page.dart';
import 'package:complex_ui/pages/filter/filter_page.dart';
import 'package:complex_ui/pages/home/home_page.dart';
import 'package:complex_ui/pages/messages/messages_page.dart';
import 'package:complex_ui/pages/profile/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  late PersistentTabController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: _currentIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> _buildScreens() {
    return const [
      HomePage(),
      MessagesPage(),
      FilterPage(),
      FavoritesPage(),
      ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icons/ant-design_home-filled.svg',
          width: 25,
          height: 25,
          color: (_currentIndex == 0) ? AppColors.white : AppColors.warmBlack,
        ),
        activeColorPrimary: AppColors.white,
        inactiveColorPrimary: AppColors.warmBlack,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icons/bxs_message.svg',
          width: 25,
          height: 25,
          color: (_currentIndex == 1) ? AppColors.white : AppColors.warmBlack,
        ),
        activeColorPrimary: AppColors.white,
        inactiveColorPrimary: AppColors.warmBlack,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icons/cib_feedly.svg',
          width: 25,
          height: 25,
          color: (_currentIndex == 2) ? AppColors.white : AppColors.warmBlack,
        ),
        activeColorPrimary: AppColors.white,
        inactiveColorPrimary: AppColors.warmBlack,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icons/clarity_shopping-bag-solid.svg',
          width: 25,
          height: 25,
          color: (_currentIndex == 3) ? AppColors.white : AppColors.warmBlack,
        ),
        activeColorPrimary: AppColors.white,
        inactiveColorPrimary: AppColors.warmBlack,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icons/ooui_user-avatar.svg',
          width: 25,
          height: 25,
          color: (_currentIndex == 4) ? AppColors.white : AppColors.warmBlack,
        ),
        activeColorPrimary: AppColors.white,
        inactiveColorPrimary: AppColors.warmBlack,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      margin: const EdgeInsets.all(16),
      bottomScreenMargin: 0,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      onItemSelected: (index) {
        setState(() {
          _currentIndex = _controller.index;
        });
      },
      backgroundColor: AppColors.yellow,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }
}
