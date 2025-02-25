import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/assets.dart';
import 'package:dalel/features/cart/presentation/views/cart_view.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/profile/presentation/views/profile_view.dart';
import 'package:dalel/features/search/presentation/views/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      controller: _controller,
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.primary_color,
      decoration: const NavBarDecoration(
          colorBehindNavBar: CupertinoColors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(Assets.imagesHomeIcon),
        icon: SvgPicture.asset(Assets.imagesHomeIconActive)),
    PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(Assets.imagesShoppingCart),
        icon: SvgPicture.asset(Assets.imagesShoppingCartActive)),
    PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(Assets.imagesSearch),
        icon: SvgPicture.asset(Assets.imagesSearchActive)),
    PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(Assets.imagesPerson),
        icon: SvgPicture.asset(Assets.imagesPersonActive))
  ];
}
