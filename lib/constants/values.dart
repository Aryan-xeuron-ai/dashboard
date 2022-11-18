import 'package:dashboard/widgets/Line.dart';
import 'package:dashboard/widgets/glassEffect.dart';
import 'package:dashboard/widgets/graph.dart';
import 'package:flutter/material.dart';

const glassbgColor = Color(0x5ab6b3b3);
const primaryColor = Color.fromARGB(210, 255, 255, 255);

List<Widget> firstItem = [
  const glass(
    height: 230.0,
    width: 230.0,
    child: Line(),
  )
];

List<Widget> gridItems = [
  const glass(
    height: 230.0,
    width: 230.0,
    child: Line(),
  ),
  const glass(
    height: 230.0,
    width: 230.0,
    child: Line(),
  ),
  const glass(
    height: 230.0,
    width: 230.0,
    child: Line(),
  ),
  const glass(
    height: 230.0,
    width: 230.0,
    child: Line(),
  ),
];
