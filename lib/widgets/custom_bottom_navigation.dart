import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        selectedItemColor: Colors.pink,
        showSelectedLabels: false,
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
        showUnselectedLabels: false,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined, size: 30),
            label: 'Calendario',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline, size: 30),
              label: 'Estadisticas'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, size: 30),
              label: 'Usuarios'),
        ]);
  }
}
