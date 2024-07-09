import 'package:eco_resolve/constants/colors.dart';
import 'package:eco_resolve/constants/nav_items.dart';
import 'package:eco_resolve/styles/style.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            height:60,
            margin:const EdgeInsets.symmetric(vertical: 10.0, horizontal:20.0 ),
            decoration:headerDecoration,
            child:Row(
              children:[
                Image.asset(
                  "assets/images/EcoResolve-logo.png",
                  height:30,
                  width:30,),
                
                const Padding(
                  padding: EdgeInsets.only(left:18.0),
                  child: Text("EcoResolve", style:TextStyle(color:CustomColor.greenPrimary,fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                const Spacer(),
                for (int i =0; i< navTitles.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                      onPressed: (){}, 
                      child:Text(
                        navTitles[i],
                        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14,color:CustomColor.lightGrey),
                      ),
                    ),
                  )

              ],
            ),
          );
  }
}