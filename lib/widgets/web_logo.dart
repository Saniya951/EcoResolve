import 'package:eco_resolve/constants/colors.dart';
import 'package:flutter/material.dart';


class WebLogo extends StatelessWidget {
  final VoidCallback? onTap;
  const WebLogo({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isDesktop= screenSize.width >=600;
    return GestureDetector(
                  onTap:onTap,
                  child: Text(
                    'EcoResolve',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: isDesktop?25:15,color :CustomColor.greenPrimary),
                  )
            );

  }
}