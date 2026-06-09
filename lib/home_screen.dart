import "package:ccs_info_app/what_we_do.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Safely look up screen measurements using MediaQuery
    final double screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Colors.white,
      // 1. Transparent AppBar allowing the image container to climb up
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "CENTER FOR\nCAREER SERVICES",
          style: TextStyle(
            color: Color(0xFF0F2C59),
            fontSize: 12,
            fontWeight: FontWeight.bold,
            height: 1.1,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // actions: [
        //   Builder(
        //       builder: (context) => IconButton(
        //       icon: const Icon(Icons.menu, color: Color(0xFF0F2C59)),
        //       onPressed: () => Scaffold.of(context).openDrawer(),
        //     ),
        //   ),
        // ],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 20, 58, 115),
        child: ListView(
          children: [
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Image.asset("assets/images/compass.png", width: 36),
              trailing: Icon(Icons.cancel),
              onTap: () => Navigator.pop(context),
              title: Text(
                "CENTER FOR\nxCAREER SERVICES",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.person),
              title: Text("About Us"),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.work),
              title: Text("Our Services"),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.calendar_month),
              title: Text("Events and Workshops"),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.book),
              title: Text("Resources"),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.star),
              title: Text("Success Stories"),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.info),
              title: Text("FAQs"),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.mail),
              title: Text("Contact Us"),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 226, 237, 251),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Stay Connected",
                      style: TextStyle(
                        color: Color.fromARGB(255, 20, 58, 115),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Follow us on social media\n and never miss an update",
                      style: TextStyle(color: Color.fromARGB(255, 20, 58, 115)),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/xlogo.png', width: 30),
                        Image.asset(
                          'assets/images/facebooklogo.png',
                          width: 30,
                        ),
                        Image.asset('assets/images/instalogo.png', width: 30),
                        Image.asset('assets/images/indeedlogo.png', width: 30),
                      ],
                    ),
                    SizedBox(height: 10),
                    // Expanded(child: Row(children: [Icon(Icons.inbox)])),
                    // Expanded(child: Row(children: [Icon(Icons.inbox)])),
                    // Expanded(child: Row(children: [Icon(Icons.inbox)])),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 2. Full-bleed Hero Container matching the design's background aspect
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.65,
                  color: const Color(
                    0xFF0F2C59,
                  ), // Matches design's rich deep navy base color
                  child: ShaderMask(
                    shaderCallback: (rect) {
                      return const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        // Reverted gradient strategy to make the top clear and bottom blend with background color
                        colors: [Colors.transparent, Colors.black],
                        stops: [0.2, 0.9],
                      ).createShader(rect);
                    },
                    blendMode: BlendMode.dstOut,
                    child: Image.asset(
                      "assets/images/futalog.jpg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 20,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Your future.\nOur mission.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "We empower students and graduates to explore\n opportunities, build skills, and achieve their\n career goals.",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Linked action row
                        // Action Text Link
                        InkWell(
                          splashColor: Colors.white54,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WhatWeDo(),
                              ),
                            );
                          },
                          child: Container(
                            width: 200,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              horizontal: 17,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0F2C59),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white54),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  "Explore Our Services",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // 3. Floating Text Overlay pulling content upwards into the image dark gradient
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0, left: 8.0),
              child: Text(
                "How We Can Help",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF0F2C59),
                ),
              ),
            ),

            const SizedBox(height: 8),
            // 4. Floating Grid Layout shifted up into the blue section break
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: _buildFeatureCard(
                      "assets/images/compass2.png",
                      "Explore\nOptions",
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildFeatureCard(
                      "assets/images/briefcass.png",
                      "Build Your\nSkills",
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildFeatureCard(
                      "assets/images/connect.png",
                      "Connect with\nOpportunities",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 3. Adaptive Card Builder Function (Modified styling to match clean design)
  Widget _buildFeatureCard(String imagePath, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 50,
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 6),
          Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: Color(0xFF333333),
                height: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
