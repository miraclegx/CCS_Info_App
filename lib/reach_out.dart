import "package:ccs_info_app/what_we_do.dart";
import "package:flutter/material.dart";

class ReachOut extends StatelessWidget {
  const ReachOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Contact Us")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "We'd love to hear from you",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: const Color(0xFF0F2C59),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Get in touch with our team.",
                style: TextStyle(fontSize: 14, color: const Color(0xFF0F2C59)),
              ),
              SizedBox(height: 10),
              ServiceCard(
                title: "Email",
                subtitle: "ccs@futa.edu.ng",
                icon: Icons.message,
                iconColor: Colors.blue,
                bgColor: Colors.blue.withAlpha(100),
              ),
              SizedBox(height: 10),
              ServiceCard(
                title: "Phone",
                subtitle: " +234 803 711 7606",
                icon: Icons.phone,
                iconColor: const Color.fromARGB(255, 42, 94, 43),
                bgColor: Colors.green.withAlpha(100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
