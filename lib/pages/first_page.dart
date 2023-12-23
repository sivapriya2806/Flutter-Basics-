// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_from_scratch_application_one/pages/profile_page.dart';
import 'package:flutter_from_scratch_application_one/pages/settings_page.dart';
import 'second_page.dart';
import 'home_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedInex = 0;

  void navigationBottomBar(int index) {
    setState(() {
      _selectedInex = index;
    });
  }

  final List pages = [HomePage(), ProfilePage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        backgroundColor: Colors.pink[200],
        elevation: 0,
        //leading: Icon(Icons.menu),
        //actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      ),
      drawer: Drawer(
        backgroundColor: Colors.pink[300],
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 40,
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
            )
          ],
        ),
      ),
/*      body: Center(
        child: ElevatedButton(
            child: Text('Go to Second Page'),
            onPressed: () {
/*              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ),
              );
*/
              Navigator.pushNamed(context, '/second_page');
            }),
      ),
*/
      body: pages[_selectedInex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedInex,
          onTap: navigationBottomBar,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'settings')
          ]),
    );
  }
}
