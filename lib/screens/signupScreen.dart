import 'package:doctor_appointment/screens/loginScreen.dart';
import"package:flutter/material.dart";
import 'package:lottie/lottie.dart';

import '../main.dart';

class SignUpscreen extends StatefulWidget {
  const SignUpscreen({Key? key}) : super(key: key);

  @override
  State<SignUpscreen> createState() => _SignUpscreenState();
}

class _SignUpscreenState extends State<SignUpscreen> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent.shade200,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const WelcomeScreen()));
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(12.0),
                //   child: Lottie.asset("assets/online-doctor.json",
                //     fit: BoxFit.fill,
                //     //animate: false,
                //   ),
                // ),
                Padding(padding: const EdgeInsets.all(12),child:  Image.asset("assets/doctor.jpg",width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2,
                ),),
                const SizedBox(height: 25,),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.mail),
                    label: Text("Enter Your Mail"),
                    suffixIcon: Icon(Icons.clear),
                  ),
                ),
                const SizedBox(height: 25,),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                    label: Text("Enter Your Phone Number"),
                    suffixIcon: Icon(Icons.clear),
                  ),
                ),
                const SizedBox(height: 25,),
                TextField(
                  obscureText: toggle?false:true,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.lock),
                    label: const Text("Enter Your Password"),
                    suffixIcon: InkWell(
                      onTap: (){
                        if(toggle== false){
                          toggle = true;
                        }else{
                          toggle = false;
                        }
                        setState((){});
                      },
                      child: toggle?const Icon(Icons.remove_red_eye_outlined):const Icon(Icons.remove_red_eye) ,
                    ),),
                ),
                const SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Material(
                      color: Colors.lightBlueAccent.shade200,
                      borderRadius: BorderRadius.circular(15),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: (){},
                          child: const Center(
                            child: Text("Sign Up",style: TextStyle(fontSize: 18,),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 5
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already you have an account?"),
                        TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                        },
                            child: const Text("Log In")),
                      ]
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
