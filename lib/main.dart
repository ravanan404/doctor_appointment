import 'package:doctor_appointment/screens/loginScreen.dart';
import 'package:doctor_appointment/screens/navbar.dart';
import 'package:doctor_appointment/screens/signupScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration:BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.lightGreen.shade500,
              Colors.lightBlueAccent.shade200
            ]),

          ),
          padding: const EdgeInsets.all(10),
          child: SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const Homepage()));
                    },
                    child:const   Text("Skip",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1,
                      letterSpacing: 1,
                      fontSize: 16,
                    ),),
                  ),
                ),
                // Lottie.asset("assets/online-doctor.json",
                //   fit: BoxFit.fill,
                //   //animate: false,
                // ),
                Image.asset("assets/doctor.jpg",width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2,
                ),
                const SizedBox(height: 25,),
                const Text("DOCTOR APPOINTMENT",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    wordSpacing: 1,
                    letterSpacing: 1,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 20,),
                const Text("Appoint Your Doctor",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black45,
                    wordSpacing: 1,
                    letterSpacing: 1,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>const LoginScreen()));
                        }, child: const Text("Log in")
                    ),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>const SignUpscreen()));
                        }, child: const Text("Sign in")
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}



