import 'package:eco_resolve/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeMob extends StatelessWidget {
  const HomeMob({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            constraints: BoxConstraints(maxHeight: screenSize.height * 0.45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome to our Community Service and Social Responsibility Platform",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: CustomColor.greenSecondary,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        "We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 8,
                          color: CustomColor.lightGrey,
                        ),
                        maxLines: 8, // Conditionally set maxLines
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 16.0), // for space
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 8.0,
                          ),
                          textStyle: const TextStyle(fontSize: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0), // Border radius for rectangular curve
                            side: const BorderSide(
                              color: CustomColor.greenSecondary, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                        ),
                        child: const Text(
                          "Community Service",
                          style: TextStyle(color: CustomColor.greenSecondary),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16.0), // space between text and image
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Image.asset(
                    "assets/images/EcoResolve-logo.png",
                    width: 100.0, // Adjust the width
                    height: 100.0,
                  ),
                ),
              ],
            ),
          ),
          
          Container(
                margin:const EdgeInsets.symmetric(horizontal: 20.0),
                constraints:BoxConstraints(maxHeight:screenSize.height*0.45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // SizedBox(height: isDesktop ? 100.0 : 16.0),
                    
                    Padding(
                      padding: const EdgeInsets.only(left:5.0),
                      child: Image.asset(
                        "assets/images/EcoResolve-logo.png",
                        width: 100.0 , // Adjust the width
                        height:100.0, ),
                    ),

                    const SizedBox(height: 16.0), 
                    
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "Welcome to our Conflict Resolution Service Platform",
                            style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: CustomColor.greenSecondary,
                        ),
                            textAlign: TextAlign.right,
                          ),
                          const SizedBox(height: 8.0),
                          const SizedBox(
                            width: null,
                            child: Text(
                              "We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.",
                              style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 8,
                            color: CustomColor.lightGrey,
                          ),
                              textAlign: TextAlign.right,
                              maxLines: 8,  // Conditionally set maxLines
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),

                          const SizedBox(height: 8.0), //for space

                          // import custom btn form constants
                          ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                            vertical: 20.0,
                          ),
                          textStyle: const TextStyle(fontSize: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0), // Border radius for rectangular curve
                            side: const BorderSide(
                              color: CustomColor.greenSecondary, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                        ),
                        child: const Text(
                          "Conflict Resolution",
                          style: TextStyle(color: CustomColor.greenSecondary),
                        ),
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
