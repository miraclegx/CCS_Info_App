
import "package:flutter/material.dart";
import 'what_we_do.dart';
import "package:flutter_svg/flutter_svg.dart";

class AboutUs extends StatelessWidget{
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("About Us"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Column(
            children: <Widget>[
              Text("About The Center For Career Services",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/profflola.jpg"),
              ),SizedBox(height: 10,),
              Text("The Center For Career Services is"
              "dedicated to helping students and "
              "alumni discover their strengths,"
              "explore career paths, and connnect"
              "with meaningful opportunities",style: TextStyle(fontSize: 16),),SizedBox(height: 10,),
              ServiceCard(
                title: "Our Mission",
               subtitle: "Empower out community to achieve their career goals through guidance, resources and connections.",
                icon: Icons.track_changes),SizedBox(height: 10,),
              ServiceCard(title: "Our Vision",
                subtitle: "A community where every individual is prepared and inspired to build a fulfilling career",
                icon: Icons.group),SizedBox(height: 10,),
              ServiceCard(title: "Our Values",
               subtitle: "We value integrity, collaboration and commitment to student success",
                icon: Icons.favorite)
            ],
          ),),
        )) ,
    );
  }
}
