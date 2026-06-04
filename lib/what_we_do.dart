import "package:flutter/material.dart";

class WhatWeDo extends StatelessWidget {
  const WhatWeDo({super.key});
    // cool seem to be gettin the hang of dis :)
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Our Services"),
        backgroundColor: const Color.fromARGB(255, 49, 73, 143),
      ),
      body: SafeArea(
        child:  SingleChildScrollView(
          child: Padding(padding: EdgeInsets.symmetric(vertical:20 ,horizontal: 15),
      child: Column(
        children: <Widget>[
          Text("We Are Here Step Of Your Journey",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          const Text("From exploring careers to landing your"
          "next opportunity, we offer personalized"
          "support every step of the way."
,style: TextStyle(fontSize: 16),),SizedBox(height: 10,),
        ServiceCard(title: "Career Advising",
         subtitle: "One-on-one advising to help you explore options and plan your path",
          icon: Icons.person), SizedBox(height: 10,),
        ServiceCard(title: "Resume And Cover Letter Support",
         subtitle: "Get expert feedback to create documents that stand out",
          icon: Icons.message),SizedBox(height: 10,),
          ServiceCard(title: "Interview Preparation",
           subtitle: "Build confidence and sharpen your skills for interview success",
            icon: Icons.bubble_chart),SizedBox(height: 10,),
            ServiceCard(title: "Internships & Job Search",
             subtitle: "Find intership and job opportunities that match your goals",
              icon: Icons.work),SizedBox(height: 10,),
              ServiceCard(title: "Workshop & Events",
               subtitle: "Attend events and workshops to build skills and network",
                icon: Icons.calendar_month)
        ],
      ),),
    )));
  }
}

class ServiceCard extends StatelessWidget{
  final String title;
  final String subtitle;
  final IconData icon;
  
  const ServiceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      //height:100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      )
                    ],
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 5,vertical: 5),
            child:  ListTile(
            leading: Icon(icon),
            title: Text(title),
            subtitle: Text(subtitle),
          ))
    );
  }
}