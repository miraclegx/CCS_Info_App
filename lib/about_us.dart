import "package:flutter/material.dart";
import 'what_we_do.dart';
import "package:flutter_svg/flutter_svg.dart";

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: <Widget>[
                Text(
                  "About The Center For Career Services",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF0F2C59),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/profflola.jpg"),
                ),
                SizedBox(height: 10),
                Text(
                  "The Center For Career Services is"
                  "dedicated to helping students and "
                  "alumni discover their strengths,"
                  "explore career paths, and connnect"
                  "with meaningful opportunities",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                ServiceCard(
                  iconColor: const Color(0xFF0F2C59),
                  bgColor: Color(0xFF0F2C59).withValues(alpha: 0.05),
                  title: "Our Mission",
                  subtitle:
                      "Empower out community to achieve their career goals through guidance, resources and connections.",
                  icon: Icons.track_changes,
                ),
                SizedBox(height: 10),
                ServiceCard(
                  iconColor: const Color(0xFF0F2C59),
                  bgColor: Color(0xFF0F2C59).withValues(alpha: 0.05),
                  title: "Our Vision",
                  subtitle:
                      "A community where every individual is prepared and inspired to build a fulfilling career",
                  icon: Icons.group,
                ),
                SizedBox(height: 10),
                ServiceCard(
                  iconColor: const Color.fromARGB(255, 169, 28, 68),
                  bgColor: Color(0xFF0F2C59).withValues(alpha: 0.05),
                  title: "Our Values",
                  subtitle:
                      "We value integrity, collaboration and commitment to student success",
                  icon: Icons.favorite,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
