import 'package:flutter/material.dart';
class Upcoming extends StatelessWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text("About Doctor",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,wordSpacing: 1
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 4,
                    blurRadius: 2
                  ),
                ]
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children:  [
                    const ListTile(
                      title:  Text("Dr.name",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,wordSpacing: 1
                        ),
                      ),
                      subtitle: Text("Doctor info",
                        style: TextStyle(
                            fontSize: 14,color: Colors.black45,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,wordSpacing: 1
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/doctorimg.jpg"),
                        radius: 35,
                      )
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                        height: 20,
                      ),
                    ),
                    // row of calender and time and status
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.calendar_month_outlined,),
                            SizedBox(width: 5,),
                            Text("27/3/23",
                              style: TextStyle(
                                  fontSize: 14,color: Colors.black45,
                                  fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.access_time_filled,),SizedBox(width: 5,),
                            Text("10:30 AM",
                              style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green
                              ),height: 8,width: 8,
                            ),const SizedBox(width: 5,),
                            const Text("Completed",
                              style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                    const SizedBox(height: 10,),

                    // row of cancel and reschedule
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.red.shade400,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(child: Text("Cancel",style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,wordSpacing: 1
                            ),)),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.green.shade400,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(child: Text("Reschedule",style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,wordSpacing: 1
                            ),
                            )),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),

              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 4,
                        blurRadius: 2
                    ),
                  ]
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children:  [
                    const ListTile(
                        title:  Text("Dr.name",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,wordSpacing: 1
                          ),
                        ),
                        subtitle: Text("Doctor info",
                          style: TextStyle(
                              fontSize: 14,color: Colors.black45,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,wordSpacing: 1
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/doctorimg.jpg"),
                          radius: 35,
                        )
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                        height: 20,
                      ),
                    ),
                    // row of calender and time and status
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.calendar_month_outlined,),
                            SizedBox(width: 5,),
                            Text("27/3/23",
                              style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.access_time_filled,),SizedBox(width: 5,),
                            Text("10:30 AM",
                              style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green
                              ),height: 8,width: 8,
                            ),const SizedBox(width: 5,),
                            const Text("Completed",
                              style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                    const SizedBox(height: 10,),

                    // row of cancel and reschedule
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.red.shade400,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(child: Text("Cancel",style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,wordSpacing: 1
                            ),)),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.green.shade400,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(child: Text("Reschedule",style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,wordSpacing: 1
                            ),
                            )),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),

              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 4,
                        blurRadius: 2
                    ),
                  ]
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children:  [
                    const ListTile(
                        title:  Text("Dr.name",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,wordSpacing: 1
                          ),
                        ),
                        subtitle: Text("Doctor info",
                          style: TextStyle(
                              fontSize: 14,color: Colors.black45,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,wordSpacing: 1
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/doctorimg.jpg"),
                          radius: 35,
                        )
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                        height: 20,
                      ),
                    ),
                    // row of calender and time and status
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.calendar_month_outlined,),
                            SizedBox(width: 5,),
                            Text("27/3/23",
                              style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.access_time_filled,),SizedBox(width: 5,),
                            Text("10:30 AM",
                              style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green
                              ),height: 8,width: 8,
                            ),const SizedBox(width: 5,),
                            const Text("Completed",
                              style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                    const SizedBox(height: 10,),

                    // row of cancel and reschedule
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.red.shade400,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(child: Text("Cancel",style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,wordSpacing: 1
                            ),)),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.green.shade400,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(child: Text("Reschedule",style: TextStyle(
                                fontSize: 14,color: Colors.black45,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,wordSpacing: 1
                            ),
                            )),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),

              ),
            ),
          ],
        ),
      );
  }
}
