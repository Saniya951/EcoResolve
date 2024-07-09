import 'package:eco_resolve/constants/colors.dart';
import 'package:eco_resolve/constants/nav_items.dart';
import 'package:flutter/material.dart';

class DrawerMob extends StatelessWidget {
  const DrawerMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColor.scaffoldBg,
        child:ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:15,top:20,bottom:20),
                child: IconButton(
                  onPressed:(){
                    Navigator.of(context).pop();
                  }, 
                  icon: const Icon(Icons.close)),
              ),
            ),
            for(int i=0; i<navIcons.length; i++)
            ListTile(
              contentPadding:const EdgeInsets.symmetric(horizontal: 20),
              leading:Icon(navIcons[i]),
              title:Text(navTitles[i]),
              titleTextStyle: const TextStyle(
                color:CustomColor.lightGrey,
                fontSize: 15,
              ),
            ),
          ],
        ),
      );
  }
}