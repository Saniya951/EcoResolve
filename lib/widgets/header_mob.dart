import 'package:eco_resolve/styles/style.dart';
import 'package:eco_resolve/widgets/web_logo.dart';
import 'package:flutter/material.dart';

class HeaderMob extends StatelessWidget {
  final VoidCallback?onLogoTap;
  final VoidCallback?onMenuTap;

  const HeaderMob({super.key, this.onLogoTap, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
            height:50.0,
            margin:const EdgeInsets.fromLTRB(40, 2, 20, 5),
            decoration:headerDecoration,
            child:Row(
              children:[
                Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: Image.asset(
                    "assets/images/EcoResolve-logo.png",
                    height:25,
                    width:25,),
                ),
                WebLogo(onTap: onLogoTap,),
                const Spacer(),
                IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu),),
                const SizedBox(width:15),
              ],
            ),
          );
  }
}