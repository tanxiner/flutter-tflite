import 'package:flutter/material.dart';
import 'main.dart'; // Import the MyHomePage for navigation
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Stack(
        children: [
          // Background Image
          SizedBox.expand(
            child: Image.asset(
              'assets/images/background_image.png',  // Replace with your image path
              fit: BoxFit.cover,  // Make sure the image covers the entire background
            ),
          ),

          // Foreground content (buttons, text, etc.)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,  // Align items to the top
              crossAxisAlignment: CrossAxisAlignment.center,  // Center items horizontally
              children: <Widget>[
                const SizedBox(height: 165),  // Add space from the top
                Text(
                  'SEGMENT',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 9,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  '',
                  style: TextStyle(fontSize: 18, color: Colors.white),  // Set text color to contrast with the background
                ),
                const SizedBox(height: 40),

                // Rectangle box around buttons
                Container(
                  padding: const EdgeInsets.all(20),  // Padding inside the box
                  margin: const EdgeInsets.symmetric(horizontal: 30), // Margin around the box
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8), // Background color of the box with opacity
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 306, // Set the width for the new button
                        child: ElevatedButton(
                          onPressed: () {
                            print("Selecting model");
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,  // Align text and icon center
                            children: [
                              const Text('Select A Model'),
                              const SizedBox(width: 8),
                              Icon(Icons.model_training, size: 24),  // Replace with your desired icon or image
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15), // Space between the new button and the row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 165, // Set the width for the new button
                            child: ElevatedButton(
                              onPressed: () {
                                print("Uploading image");
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,  // Align text and icon center
                                children: [
                                  const Text('Image Upload'),
                                  const SizedBox(width: 5),
                                  Icon(Icons.image, size: 24),  // Replace with your desired icon or image
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          SizedBox(
                            width: 127, // Set the width for the new button
                            child: ElevatedButton( // Space between the buttons
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MyHomePage(title: 'Image Segmentation'),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,  // Align text and icon center
                                children: [
                                  const Text('Camera'),
                                  const SizedBox(width: 5),
                                  Icon(Icons.camera_alt, size: 24),  // Replace with your desired icon or image
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}