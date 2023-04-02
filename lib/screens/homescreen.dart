import 'package:doctor_appointment/screens/appointmentscreen.dart';
import "package:flutter/material.dart";
class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  List symptoms =[
    "Cough",
    "Fever",
    "Body pain",
    "Cold",
    "snuffle",
  ];
  List clr =[
    Colors.lightGreenAccent.shade100,
    Colors.deepPurpleAccent[100],
    Colors.orange[100],
    Colors.yellow[100],
    Colors.purpleAccent[100],
  ];

  List img = [
    "doctorimg",
    "doctorimg2",
    "doctorimg3",
    "doctorimg4",
   
   ];
  List drname = [
    "Vennasa",
    "Yelena",
    "Emma Watson",
    "Natasha"
  ];

  List spl =[
    "Opthamology",
    "Pediatrics",
    "Psychiatry",
    "General Medicine"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent.shade100,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Hello Sakthi",style: TextStyle(
                    fontSize: 30,letterSpacing: 1,wordSpacing: 1,fontWeight: FontWeight.bold,
                  ),),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/doctorimg.jpg"),
                  ),
                ],
              ), // welcome greetings and circular avatar
            ),


          // card of clinic visit and home appointment
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // clinic visit card
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:const [
                         BoxShadow(
                          color: Colors.black38,
                          blurRadius: 6,
                          spreadRadius: 4,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.add,color: Colors.black38,size: 45),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Text("Clinic Visit",
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                        const SizedBox(height: 5,),
                        const Text("Make an appointment",
                          style: TextStyle(
                            color: Colors.black38,
                          ),)
                      ],
                    ),
                  ),
                ),

                // home visit card
                const SizedBox(width:10),
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 6,
                          spreadRadius: 4,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.home,color: Colors.black38,size: 45),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Text("Home Appointment",
                          style: TextStyle(
                            color: Colors.black,
                          ),),
                        const SizedBox(height: 5,),
                        const Text("Make an appointment",
                          style: TextStyle(
                            color: Colors.black38,
                          ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
           const Text("What are your Symptoms?",
           style: TextStyle(
             fontSize: 20,
             color: Colors.black54
           ),),
            const SizedBox(height: 10),


            // Symptoms cards
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: symptoms.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context ,index){
                   return Container(
                     margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                     padding: EdgeInsets.all(15),
                     decoration: BoxDecoration(
                       color: clr[index],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:const [
                         BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 4,
                          blurRadius: 6,
                        ),
                      ],
                     ),
                     child: Text(symptoms[index],style:const  TextStyle(
                       color: Colors.black54,
                       fontSize: 14,
                       fontWeight: FontWeight.w400
                     ),),
                   );
                  }
              ),
            ),
            const SizedBox(height: 15,),
            const Text("Popular Doctors",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.black54
            ),),
            // const SizedBox(height: 10,),

            //Popular Doctors and their occupation
            GridView.builder(
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                shrinkWrap: true,
                itemCount: img.length,
                itemBuilder: (context, index){
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AppointmentScreen(img: img[index], drname: drname[index],spl: spl[index],)));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: clr[index],
                          boxShadow:const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              spreadRadius: 4
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage("assets/${img[index]}.jpg"),
                            ),
                            Text("Dr.${drname[index]}",style:const  TextStyle(
                              color: Colors.black54,
                              fontSize: 14
                            ),),
                            Text("${spl[index]}",
                              style: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12
                              ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star,color: Colors.amber,),
                                Text("4.9")
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                }
            ),
          ],
        ),
      ),
    );
  }
}
