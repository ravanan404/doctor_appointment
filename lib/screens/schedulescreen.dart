import 'package:doctor_appointment/screens/homescreen.dart';
import 'package:doctor_appointment/screens/upcoming.dart';
import 'package:flutter/material.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int buttonIndex= 0;
  final selectedWidget = [
    Upcoming(),
    Center(child: Text("Completed"),),
    Center(child: Text("Cancelled"),),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
                icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),

              ),
              const Text("Schedule",style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,wordSpacing: 1
              ),
              ),
            ],
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    setState((){
                      buttonIndex = 0;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    // margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(
                        color: buttonIndex ==0?Colors.lightBlueAccent:Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text("Upcoming",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,wordSpacing: 1
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5,),
                InkWell(
                  onTap: (){
                    setState((){
                      buttonIndex = 1;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    // margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(
                        color: buttonIndex ==1?Colors.lightBlueAccent:Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text("Completed",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,wordSpacing: 1
                      ),
                    ),
                  ),
                ), const SizedBox(width: 5,),
                InkWell(
                  onTap: (){
                    setState((){
                      buttonIndex = 2;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    // margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(
                      color: buttonIndex ==2?Colors.lightBlueAccent:Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text("Cancelled",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,wordSpacing: 1
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          selectedWidget[buttonIndex],

        ],
      ),
    );
  }
}


