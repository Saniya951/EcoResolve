import 'package:eco_resolve/constants/colors.dart';
import 'package:flutter/material.dart';

class WebLogo extends StatelessWidget {
  final VoidCallback? onTap;
  const WebLogo({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                  onTap:onTap,
                  child: const Text(
                    'EcoResolve',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color :CustomColor.greenPrimary),
                  )
            );

  }
}