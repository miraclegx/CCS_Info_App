import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Safely look up screen measurements using MediaQuery
    final double screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: const Color.fromARGB(255, 49, 73, 143),
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                // 1. Proportional Top Banner Container
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.3, // Takes exactly 30% of any screen height
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/futalog.jpg"),
                      fit: BoxFit.cover, 
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Your Future. Our Mission",
                      style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                
                // Section Header
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "How We Can Help",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                
                // 2. GridView instead of Row + Expanded for total layout fluidness
                GridView.count(
                  shrinkWrap: true, // Tells GridView to only take up required space
                  physics: const NeverScrollableScrollPhysics(), // Let SingleChildScrollView handle scrolling
                  crossAxisCount: 3, // 3 Columns
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75, // Aspect ratio determines height dynamically (Width / Height)
                  children: [
                    _buildFeatureCard("assets/images/compass.png", "Explore Options"),
                    _buildFeatureCard("assets/images/briefcass.png", "Explore Options"),
                    _buildFeatureCard("assets/images/connect.png", "Connect"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 3. Extracted Card Builder Function
  Widget _buildFeatureCard(String imagePath, String title) {
    return Container(
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
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Image scales down adaptively based on available card space
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 8),
                // Text expands horizontally and wraps clean
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}