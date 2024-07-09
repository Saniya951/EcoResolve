import 'package:eco_resolve/constants/btn.dart';
import 'package:eco_resolve/constants/colors.dart';
import 'package:eco_resolve/constants/size.dart';
import 'package:eco_resolve/widgets/drawer_mob.dart';
import 'package:eco_resolve/widgets/header.dart';
import 'package:eco_resolve/widgets/header_mob.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    // Define text styles
    const TextStyle desktopTitleStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: CustomColor.greenSecondary,
    );

    const  TextStyle mobileTitleStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: CustomColor.greenSecondary,
    );

    const TextStyle desktopBodyStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 15,
      color: CustomColor.lightGrey,
    );

    const TextStyle mobileBodyStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 8,
      color: CustomColor.lightGrey,
    );

    // LayoutBuilder for adding responsive page constraints
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth >= minDesktopWidth;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,

          // For right side drawer
          endDrawer: isDesktop ? null : const DrawerMob(),

          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // MAIN HOME PAGE
              if (isDesktop)
                const Header()
              else
                HeaderMob(
                  onLogoTap: () {},
                  onMenuTap: () {
                    // This will open right side drawer
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              Container(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome to our Community Service and Social Responsibility Platform",
                            style: isDesktop ? desktopTitleStyle : mobileTitleStyle,
                          ),
                          const SizedBox(height: 8.0),
                          SizedBox(
                            width: isDesktop? 800.0 : 400.0,
                            child: Text(
                              "We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.",
                              style: isDesktop ? desktopBodyStyle : mobileBodyStyle,
                              maxLines: 8,  // Conditionally set maxLines
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),

                          const SizedBox(height: 16.0), //for space

                          // import custom btn form constants
                          CustomButton(
                            text: "Community Service",
                            onPressed: () {},
                            constraints: constraints,
                          ),
                           
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0), 
                    Padding(
                      padding: isDesktop? const EdgeInsets.only(right:80.0):const EdgeInsets.only(right:5.0),
                      child: Image.asset(
                        "assets/images/EcoResolve-logo.png",
                        width: isDesktop ? 200.0 : 100.0, // Adjust the width
                        height: isDesktop ? 200.0 : 100.0, ),
                    ),
                    SizedBox(height: isDesktop ? 100.0 : 16.0),
                  
                  ],
                ),
              ),


              Container(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    SizedBox(height: isDesktop ? 100.0 : 16.0),
                    
                    Padding(
                      padding: isDesktop? const EdgeInsets.only(left:80.0):const EdgeInsets.only(left:5.0),
                      child: Image.asset(
                        "assets/images/EcoResolve-logo.png",
                        width: isDesktop ? 200.0 : 100.0, // Adjust the width
                        height: isDesktop ? 200.0 : 100.0, ),
                    ),

                    const SizedBox(height: 16.0), 
                    


                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Welcome to our Conflict Resolution Service Platform",
                            style: isDesktop ? desktopTitleStyle : mobileTitleStyle,
                            textAlign: TextAlign.right,
                          ),
                          const SizedBox(height: 8.0),
                          SizedBox(
                            width: isDesktop? 800.0 : 400.0,
                            child: Text(
                              "We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.",
                              style: isDesktop ? desktopBodyStyle : mobileBodyStyle,
                              textAlign: TextAlign.right,
                              maxLines: 8,  // Conditionally set maxLines
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),

                          const SizedBox(height: 16.0), //for space

                          // import custom btn form constants
                          CustomButton(
                            text: "Conflict Resolution",
                            onPressed: () {},
                            constraints: constraints,
                          ),
                           
                        ],
                      ),
                    ),
                  
                  ],
                ),
              ),

              // Conflict resolution Page
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),

              // Community service Page
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),

              // Feedback Page
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
            ],
          ),
        );
      },
    );
  }
}