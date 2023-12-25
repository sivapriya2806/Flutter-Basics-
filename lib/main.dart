// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_from_scratch_application_one/pages/profile_page.dart';
import 'package:flutter_from_scratch_application_one/pages/second_page.dart';
import 'package:flutter_from_scratch_application_one/pages/settings_page.dart';

import 'pages/first_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ['abi', 'alvok', 'marie'];

  void userTapped() {
    print("you tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: FirstPage(),
 /*     routes: {
        '/first_page': (context) => FirstPage(),
        '/second_page': (context) => SecondPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/setting': (context) => SettingPage()
      },
*/
         home: Scaffold(
        appBar: AppBar(
          title: Text('My AppBar'),
          backgroundColor: Colors.pink[400],
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),
/*        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.pink[200],
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(30),
            child: Icon(color: Colors.white, Icons.favorite, size: 63),
          ),
        ),
*/

/*        body: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        scrollDirection: Axis.horizontal,
        children: [
          //1st box

          Container(
            height: 200,
            width: 300,
            color: Colors.pink[200],
          ),

          //2nd box
          Container(
            height: 100,
            width: 200,
            color: Colors.pink[300],
          ),

          //3rd box

          Container(
            height: 500,
            width: 100,
            color: Colors.pink[100],
          ),
        ],
      )
*/
        /*       body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(names[index]),
          ),
        ),
*/
/*         body: GridView.builder(
              itemCount: 64,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index) => Container(
                    color: Colors.pink[200],
                    margin: EdgeInsets.all(2),
                  ))
*/
/*        body: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            //big box
            Container(
              height: 300,
              width: 300,
              color: Colors.pink[400],
            ),
            //medium box
            Container(
              height: 200,
              width: 200,
              color: Colors.pink[300],
            ),
            //smallbox
            Container(
              height: 100,
              width: 100,
              color: Colors.pink[200],
            )
          ],
        ),
*/
/*        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              height: 300,
              width: 300,
              color: Colors.pink[200],
              child: Center(child: Text("Tap me")),
            ),
          ),
        ),
*/
      ),

    );
  }
}
