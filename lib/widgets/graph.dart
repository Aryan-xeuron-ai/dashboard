import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';

class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  final List<Feature> features = [
    Feature(
      data: [0.2, 0.8, 0.4, 0.7, 0.6],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        LineGraph(
          features: features,
          size: const Size(350, 200),
          labelX: const ['10:00', '10:05', '10:10', '10:15', '10:20'],
          labelY: const ['20%', '40%', '60%', '80%'],
          showDescription: false,
          graphColor: Colors.white30,
          graphOpacity: 0.5,
          verticalFeatureDirection: false,
          descriptionHeight: 90,
        ),

      ],
    );
  }
}
