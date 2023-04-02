import 'package:doctor_appointment/screens/homescreen.dart';
import "package:flutter/material.dart";
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent.shade100,

      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
        child: Column(

          children: [
            Padding(padding: const EdgeInsets.only(left: 10,top: 25,right: 20,bottom: 10),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                      icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),

                  ),
                  const SizedBox(width: 55,),
                  const Text("Settings",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,wordSpacing: 1
                      ),),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/doctorimg.jpg"),
                radius: 35,
              ),
              title: Text("DR.Name",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,wordSpacing: 1
                ),),
              subtitle: Text("Doctor info",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                    letterSpacing: 1,wordSpacing: 1
                ),),
            ),
            const Divider(),
            const SizedBox(height: 10,),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.lightBlueAccent,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.person),
              ),
              title: const Text("Profile",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,wordSpacing: 1
              ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const SizedBox(height: 10,),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.notifications_active_outlined),
              ),
              title: const Text("Notification",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,wordSpacing: 1
              ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const SizedBox(height: 10,),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration:const  BoxDecoration(
                  color: Colors.pinkAccent,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.shield_outlined),
              ),
              title: const Text("Privacy",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,wordSpacing: 1
              ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const SizedBox(height: 10,),
            ListTile(
              leading: Container( padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                  color: Colors.deepPurpleAccent.shade200,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.settings_suggest_sharp),
              ),
              title: const Text("General",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,wordSpacing: 1
              ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const SizedBox(height: 10,),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.yellowAccent,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.info_outline_rounded),
              ),
              title: const Text("About us",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,wordSpacing: 1
              ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(),
            const SizedBox(height: 10,),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.logout),
              ),
              title: const Text("Log Out",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,wordSpacing: 1
              ),
              ),
              // trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
