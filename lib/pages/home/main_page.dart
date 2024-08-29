import "package:flutter/material.dart";
import "package:myapp/pages/home/cart_page.dart";
import "package:myapp/pages/home/home_page.dart";
import "package:myapp/pages/home/profile_page.dart";
import "package:myapp/pages/home/wishlist_page.dart";
import "package:myapp/theme.dart";

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget scanButton() {
      return FloatingActionButton(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {},
        backgroundColor: backgroundColor6,
        child: Image.asset(
          'assets/img/icon_scan.png',
          // color: Color.fromARGB(0, 252, 250, 250),
        ),
      );
    }

    Widget custombottomNav() {
      return ClipRRect(
        // decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        // ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          color: primaryColor,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: primaryColor,
            currentIndex: currentIndex,
            onTap: (value) => setState(() {
              print(value);
              currentIndex = value;
            }),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 0, bottom: 0),
                  child: Image.asset(
                    'assets/img/icon_home.png',
                    width: 20,
                    color:
                        currentIndex == 0 ? backgroundColor5 : backgroundColor6,
                  ),
                ),
                label: '',
                tooltip: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 0, bottom: 0),
                  child: Image.asset(
                    'assets/img/icon_love.png',
                    width: 20,
                    color:
                        currentIndex == 1 ? backgroundColor5 : backgroundColor6,
                  ),
                ),
                label: '',
                tooltip: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 0, bottom: 0),
                  child: Image.asset(
                    'assets/img/icon_cart.png',
                    height: 4,
                    width: 4,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 0, bottom: 0),
                  child: Image.asset(
                    'assets/img/icon_cart.png',
                    width: 20,
                    color:
                        currentIndex == 3 ? backgroundColor5 : backgroundColor6,
                  ),
                ),
                label: '',
                tooltip: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  child: Image.asset(
                    'assets/img/icon_profile.png',
                    width: 20,
                    color:
                        currentIndex == 4 ? backgroundColor5 : backgroundColor6,
                  ),
                ),
                label: '',
                tooltip: 'Profile',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return WishlistPage();
          break;
        case 3:
          return CartPage();
          break;
        case 4:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 112, 14, 209),
      floatingActionButton: scanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: custombottomNav(),
      body: body(),
    );
  }
}
