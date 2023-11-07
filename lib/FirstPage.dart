import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mrxproject/pages/HomePage.dart';
import 'package:mrxproject/pages/Notifications.dart';
import 'package:mrxproject/pages/Settings.dart';
import 'newe_entry/EntryPage.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
   HomePage(),
    Notifications(),
    Settings(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: AppBar(
      //     toolbarHeight: 45,
      //     title: Text("DigiCoin",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 30,color: Colors.white),),
      //     centerTitle: true,
      //     flexibleSpace: Container(
      // decoration: BoxDecoration(
      // borderRadius: BorderRadius.only(topLeft: Radius.circular(80),bottomRight: Radius.circular(80),
      // ),
      //     gradient: LinearGradient(
      //     colors: [
      //       Colors.teal.shade200,
      //       Colors.teal.shade300
      //
      //     ]
      // )
      // ),
      //
      //     ),
      //
      //   ),
      body: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50),),
          gradient: LinearGradient(
              colors: [
                Colors.teal.shade200,
                Colors.teal.shade100,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            activeColor: Colors.white,
            tabBackgroundColor: Colors.teal,
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(

                icon: Icons.home_filled,
                text: "Home",
              ),

              GButton(
                icon: Icons.notification_add,
                text: "Bells",

              ),
              GButton(

                icon: Icons.settings,
                text: "Setting",
              ),
              // GButton(
              //   onPressed: (){},
              //   icon: Icons.hive_sharp,
              //   text: "History",
              // ),

            ]
            ,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        highlightElevation: 20,
        backgroundColor: Colors.teal,
        shape: StadiumBorder(),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NewEntryPage(),));
        },
        child: Icon(Icons.add,size: 40,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );

  }
}
