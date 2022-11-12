import 'dart:ui';

import 'package:dashboard/widgets/graph.dart';
import 'package:flutter/material.dart';
import '../constants/values.dart';

class Glass extends StatelessWidget{
  final height;
  final width;

  const Glass({Key? key,required this.height,required this.width}): super(key:key);

  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: height,
        width: width,
        color: glassbgColor,
        padding: const EdgeInsets.all(2.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 3,
            sigmaY: 3,
          ),
          child: Row(
            children: const [
              Graph(),
            ],
          ),
        ),
      ),
    );
  }
}