import 'package:eco_resolve/constants/colors.dart';
import 'package:eco_resolve/constants/size.dart';
import 'package:eco_resolve/widgets/conf_chatscreen_web.dart';
import 'package:eco_resolve/widgets/drawer_mob.dart';
import 'package:eco_resolve/widgets/header.dart';
import 'package:eco_resolve/widgets/header_mob.dart';
import 'package:eco_resolve/widgets/home_desk.dart';
import 'package:eco_resolve/widgets/home_mob.dart';
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
              // MAIN HEADER PAGE
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

              // MAIN HOME PAGE
              if(isDesktop)
                const HomeDesk()
              else
                const HomeMob(),

              // Conflict resolution Page
              if(isDesktop)
                const ConfChatScreenWeb()
              else
                const ConfChatScreenWeb(),

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