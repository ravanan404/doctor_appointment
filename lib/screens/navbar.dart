import 'package:doctor_appointment/screens/appointmentscreen.dart';
import 'package:doctor_appointment/screens/homescreen.dart';
import 'package:doctor_appointment/screens/schedulescreen.dart';
import 'package:doctor_appointment/screens/settingscreen.dart';
import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int _selectedIndex = 0;
  final Screens =  [
    HomeScreen(),
    ScheduleScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade100,
      body: Screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Colors.lightGreenAccent.shade100,
        iconSize: 28,
        elevation: 2.0,
        showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(
          color: Colors.black54,fontWeight: FontWeight.bold,
        ),
        currentIndex: _selectedIndex,
          onTap: (index){
          setState((){
            _selectedIndex = index;
          });
          },
          items:const  [
            BottomNavigationBarItem(
                icon:  Icon(Icons.home, color: Colors.black54),
                label: "Home",
                backgroundColor: Colors.lightGreen,
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined,color: Colors.black54),
                label: "Schedule",
                backgroundColor: Colors.lightGreen
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.settings,color: Colors.black54),
                label: "Settings",
                backgroundColor: Colors.lightGreen
            ),
          ]

      ) ,
    );
  }
}



