import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/values.dart';
import 'Line.dart';

class GlassLine extends StatelessWidget{
  final height;
  final width;

  const GlassLine({Key? key,required this.height,required this.width}): super(key:key);

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
            sigmaX: 2,
            sigmaY: 2,
          ),
          child: Row(
            children: const [
              Line(),
            ],
          ),
        ),
      ),
    );
  }
}