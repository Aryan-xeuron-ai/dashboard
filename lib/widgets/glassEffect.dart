import 'dart:ui';

import 'package:flutter/material.dart';
import '../constants/values.dart';

class glass extends StatelessWidget{
  final height;
  final width;
  final child;

  const glass({Key? key,required this.height,required this.width,required this.child}): super(key:key);

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
          child: child,
        ),
      ),
    );
  }
}