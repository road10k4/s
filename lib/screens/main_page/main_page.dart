import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/Info_page/info_page.dart';
import 'package:flutter_application_3/screens/history_page/history_page.dart';
import 'package:flutter_application_3/screens/home_page/home_page.dart';
import 'package:flutter_application_3/screens/tasks/tasks_page.dart';



class Main extends  StatefulWidget {
  static const String routeName = '/main_page';
  const Main({Key? key}) : super(key : key);
  
  @override
  State<Main> createState() => _MainState();
}
  class _MainState extends State<Main>{
    int _selectedIndex = 0;
    void _navigateBottomaBar( int index){
      setState(() {
        _selectedIndex = index;
      });
     
    }
    static final List<Widget> _NavScreens = <Widget>[
        Home(),
        Tasks(),
        History(),
        Info(),

    ];
    @override
    Widget build(BuildContext context){
      
      return Scaffold(
        body: _NavScreens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomaBar,
          type: BottomNavigationBarType.fixed,
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Main'),
            BottomNavigationBarItem(icon: Icon(Icons.event_note), label: 'Tasks'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
          ]
        ),
      );
          
  }
  }