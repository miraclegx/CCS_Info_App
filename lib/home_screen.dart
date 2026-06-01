
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Center For Career Services, FUTA"),backgroundColor: const Color.fromARGB(255, 210, 142, 198),),
      body: Padding(padding: EdgeInsets.only(top: 20,left: 40,right: 40,bottom: 20),
      child: Column( // keep in mind each child is a container, for each of the about, what we do and reach out sht
        children: <Widget>[
         Expanded(child:  Container(// this is for our About Us card
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4)
                    )
                  ],
      //    gradient: const LinearGradient(
      //colors: [
    //     Color(0xFF4A148C), // FUTA Deep Purple (Start Color)
    //     Color(0xFF7B1FA2), // Vibrant Tech Purple (End Color)
    //   ],
    //   begin: Alignment.topLeft,     // Where the first color starts
    //   end: Alignment.bottomRight,   // Where the second color ends
    // ),
        ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset("images/img1.svg"),
        ],
      ),
      )),SizedBox(height: 20,),
      Expanded(child:  Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 235, 241, 245),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4)
                    )
                  ]
        ),
      )),SizedBox(height: 20),
      Expanded(child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 227, 226, 233),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4)
                    )
                  ]
        ),
      ))
        ],
      )),
    );
  }
}
