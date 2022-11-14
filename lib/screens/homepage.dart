import 'package:flutter/material.dart';
import 'package:dashboard/constants/values.dart';

import '../widgets/Line.dart';
import '../widgets/glassEffect.dart';
import '../widgets/graph.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Data> data=[
    Data(1,4),
    Data(2,5),
    Data(3,3),
    Data(4,9),
    Data(5,6),
    Data(6,4),
  ];

  Future<void> _refresh() async {
    return await Future.delayed(
      const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: const GridView.custom(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 2,
            ),
            childrenDelegate: SliverChildListDelegate.fixed(
              [
            Positioned(
                  top: 0,
                  left: 0,
                  child: Glass(
                    height: 250.0,
                    width: 400.0,
                    child: Graph(),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 250,
                  child: Glass(
                    height: 230.0,
                    width: 230.0,
                    child: Line(),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 250,
                  child: Glass(
                    height: 230.0,
                    width: 230.0,
                    child: Line(),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 250,
                  child: Glass(
                    height: 230.0,
                    width: 230.0,
                    child: Line(),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 250,
                  child: Glass(
                    height: 230.0,
                    width: 230.0,
                    child: Line(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Data {

  Data(this.item1,this.item2);

  final int item1;
  final int item2;
}
