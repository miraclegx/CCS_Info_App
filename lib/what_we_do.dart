import "package:flutter/material.dart";

class WhatWeDo extends StatelessWidget {
  const WhatWeDo({super.key});
  // cool seem to be gettin the hang of dis :)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Our Services"),
        backgroundColor: Colors.transparent,
        //backgroundColor: const Color.fromARGB(255, 49, 73, 143),
      ),
      body: //SafeArea(
      SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We're Here for every\nstep of your journey",
                style: TextStyle(
                  fontSize: 24,
                  color: const Color(0xFF0F2C59),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "From exploring careers to landing your"
                "next opportunity, we offer personalized"
                "support every step of the way.",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF0F2C59).withValues(alpha: 0.85),
                ),
              ),
              SizedBox(height: 10),
              ServiceCard(
                iconColor: const Color(0xFF0F2C59),
                bgColor: Color(0xFF0F2C59).withValues(alpha: 0.09),
                title: "Career Advising",
                subtitle:
                    "One-on-one advising to help you explore options and plan your path",
                icon: Icons.person,
              ),
              SizedBox(height: 10),
              ServiceCard(
                iconColor: const Color(0xFF057932),
                bgColor: Color(0xFF057932).withValues(alpha: 0.09),
                title: "Resume And Cover Letter Support",
                subtitle:
                    "Get expert feedback to create documents that stand out",
                icon: Icons.message,
              ),
              SizedBox(height: 10),
              ServiceCard(
                iconColor: const Color(0xFF054551),
                bgColor: Color(0xFF054551).withValues(alpha: 0.09),
                title: "Interview Preparation",
                subtitle:
                    "Build confidence and sharpen your skills for interview success",
                icon: Icons.bubble_chart,
              ),
              SizedBox(height: 10),
              ServiceCard(
                iconColor: const Color(0xFF7A7003),
                bgColor: Color(0xFF7A7003).withValues(alpha: 0.09),
                title: "Internships & Job Search",
                subtitle:
                    "Find intership and job opportunities that match your goals",
                icon: Icons.work,
              ),
              SizedBox(height: 10),
              ServiceCard(
                iconColor: const Color(0xFF5C231E),
                bgColor: Color(0xFF5C231E).withValues(alpha: 0.09),
                title: "Workshop & Events",
                subtitle:
                    "Attend events and workshops to build skills and network",
                icon: Icons.calendar_month,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final Color bgColor;

  const ServiceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
    required this.bgColor,
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
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 5, vertical: 5),
        child: ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: bgColor,
            child: Icon(icon, color: iconColor, size: 26),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xFF0F2C59),
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: const Color(0xFF0F2C59).withValues(alpha: 0.85),
            ),
          ),
        ),
      ),
    );
  }
}
