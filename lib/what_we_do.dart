import "package:flutter/material.dart";

class WhatWeDo extends StatelessWidget {
  const WhatWeDo({super.key});
    // cool seem to be gettin the hang of dis :)
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Our Services"),),
      body: SafeArea(
        child:  SingleChildScrollView(
          child: Padding(padding: EdgeInsets.symmetric(vertical:20 ,horizontal: 15),
      child: Column(
        children: <Widget>[
          Text("About The Center For Career Services",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          const Text("From exploring careers to landing your"
          "next opportunity, we offer personalized"
          "support every step of the way."
),
        Container(
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
            leading: Icon(Icons.person),
            title: Text("Career Advising"),
            subtitle: Text("One-on-one advising to help you explore options and plan your path"),
          ))
        )
        ],
      ),),
    )));
  }
}