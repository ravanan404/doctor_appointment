import "package:flutter/material.dart";
class AppointmentScreen extends StatelessWidget {
  final String img;
  final String drname;
  final String spl;

    AppointmentScreen({Key? key, required this.img, required this.drname, required this.spl} ) : super(key: key);

  List drnames = [
    "Vennasa",
    "Yelena",
    "Emma Watson",
    "Natasha"
  ];
  List imgs = [
    "doctorimg",
    "doctorimg2",
    "doctorimg3",
    "doctorimg4",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade100,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurpleAccent.shade100,
        title: const Text("Appointment "),
        centerTitle: true,
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))],
      ),


      body: SingleChildScrollView(
        // padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/${img}.jpg"),
                  radius: 45,
                ),
                const SizedBox(height: 10,),
                Text("DR.${drname}",
                  style: const TextStyle(
                    fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45
                  ),),

                Text("${spl}",
                  style: const TextStyle(
                    fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.phone),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.chat_rounded),
                      ),
                    )

                  ],
                ),
              ],
            ),
            const SizedBox(height: 15,),

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.5,
              padding: const EdgeInsets.only(
                top: 20,left: 10
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children:  [
                  const Text("About Doctor",
                  style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ), ),
                  const SizedBox(height: 10,),
                  const Text("A doctor is someone who is experienced and certified to practice medicine to help maintain or restore physical and mental health. A doctor is tasked with interacting with patients, diagnosing medical problems and successfully treating illness or injury. "
                      "There are many specific areas in the field of medicine that students can study",
                    style:  TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                    ),
                  ),
                  const SizedBox(height: 10,),


                  // Row of widget review
                  Row(
                    children: [
                      const Text("Reviews",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),),
                      const SizedBox(width: 5,),
                      const Icon(Icons.star,
                      color: Colors.amber,), const SizedBox(width: 5,),
                      const Text("4.9"),const SizedBox(width: 5,),
                      const Text("(258)"),
                      const Spacer(),
                      TextButton(onPressed: (){}, child: const Text("See all"))
                    ],
                  ),
                  const SizedBox(height: 25,),

                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                      shrinkWrap: true,
                        itemCount: drnames.length,
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(10),
                        itemBuilder: (context, index){
                          return Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                   spreadRadius: 2,blurRadius: 4,
                                )
                              ]
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width/1.4,

                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    title: Text("DR.${drnames[index]}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black87,
                                        fontSize: 16
                                      ),
                                    ),
                                    leading: CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage("assets/${imgs[index]}.jpg"),
                                    ),
                                    subtitle: const Text("1 day ago",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black54,
                                          fontSize: 16
                                      ),
                                    ),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Icon(Icons.star,color: Colors.amber,),
                                        Text("4.9"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white60,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.location_on),
                    ),
                    title: const Text("Govt, Hospital-avadi,Chennai",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black
                    ),),
                    subtitle: const Text("Hospital address", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45
                    ),
                    ),

                  ),
                ],
              ),

            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2
            )
          ]
        ),
        child: TextButton(
          onPressed: (){},
          child: const Text("Book Appointment",style:  TextStyle(
              fontSize: 18,
              color: Colors.black
          ),
          ),
        )
      ),
    );
  }
}




class ntg extends StatelessWidget {
  final String img;
  final String drname;
   ntg({Key? key,required this.img, required this.drname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.deepPurpleAccent.shade100,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurpleAccent.shade100,
        title: const Text("Appointment "),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // margin: EdgeInsets.all(10),
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset("assets/${img}.jpg",fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
              ),
            ),

            Text("Dr.${drname}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                wordSpacing: 1,letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}