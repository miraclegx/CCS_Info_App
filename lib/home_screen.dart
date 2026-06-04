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
        //backgroundColor: const Color.fromARGB(255, 49, 73, 143),
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
    // 1. Give the container a base color (the color the image will blend into)
    color: const Color(0xFF1E1E1E), 
    borderRadius: BorderRadius.circular(10),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 10,
        offset: Offset(0, 4),
      )
    ],
  ),
  // 2. Use ShaderMask to apply the blending gradient directly to the image child
  child: ShaderMask(
    shaderCallback: (rect) {
      return const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        // The image stays fully visible at the top, and fades to black at the bottom
        colors: [Colors.black, Colors.transparent],
        stops: [0.1, 1.0], // Controls where the fade starts and ends
      ).createShader(rect);
    },
    blendMode: BlendMode.dstIn, // Combines the gradient mask with the image
    child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/futalog.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      // 3. Place your text inside the container so it sits over the faded area
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.center,
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
    ),
  ),
), SizedBox(height: 20,),      
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