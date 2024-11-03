import 'package:appep/utils/global.colors.dart';
import 'package:appep/views/dashboard.view.dart';
import 'package:appep/views/login.view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavigatorBarView extends StatefulWidget {
  const NavigatorBarView({
    super.key,
  });

  @override
  State<NavigatorBarView> createState() => _NavigatorBarViewState();
}

class _NavigatorBarViewState extends State<NavigatorBarView> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DashboardView()),
      );
    } else if (index == 1) {
      _logout();
    } else if (index == 2) {
      _logout();
    }
  }

  Future<void> _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: GlobalColors.warningColor,
      selectedItemColor: GlobalColors.whiteColor,
      unselectedItemColor: GlobalColors.darkcolor,
      currentIndex: _currentIndex,
      onTap: _onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Dashboard',
        ),
        /* BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ), */
        BottomNavigationBarItem(
          icon: Icon(Icons.logout_rounded),
          label: 'Salir',
        ),
      ],
    );
  }
}
