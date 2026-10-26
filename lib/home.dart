import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const new({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 260,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Container(
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFD77085),
                borderRadius:BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ) 
              ),
              child: Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius:56,
                        child: Icon(Icons.person,
                        size: 65,
                        ),
                      ),
                    ),
                    ],
                  ),
                ),
              ),
                    
                    SizedBox(height:10 ,),
                    Text("Matt Adetola",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold                    ),
                    ),
                    SizedBox(height:2 ,),
                    Text("Products",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold                    ),
                    ),
                    Divider(
                      thickness: 3,
                      indent: 30,
                      endIndent: 30,
                    ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "i joined this platform to increase"
                      " my knowledge about UI/UX designs"
                      " i will also love to learn more from"
                      " freinds and organizers on this"
                      " space"
                      ),
                      
                    ),
                    Divider(
                      thickness: 3,
                      indent: 30,
                      endIndent: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 45,
                        right: 15 
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite,
                              color: const Color.fromARGB(255, 110, 17, 10),
                              size: 20,
                              ),
                              SizedBox(width: 10,),
                              Text("Lency 1013",
                              style: TextStyle(
                                fontSize: 17,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold
                              ),
                              )
                            ],
                          ),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              Icon(Icons.business,
                              color: const Color.fromARGB(255, 110, 17, 10),
                              size: 20,
                              ),
                              SizedBox(width: 10,),
                              Text("kayode emmanuel",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic
                              ),
                              )
                            ],
                          )
                        ],
                      ),
                      )
                  ],
                
                ),
                
              ),
            )
    );
  }
}