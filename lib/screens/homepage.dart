import 'package:flutter/material.dart';
import 'package:dashboard/constants/values.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Data> data = [
    Data(1, 4),
    Data(2, 5),
    Data(3, 3),
    Data(4, 9),
    Data(5, 6),
    Data(6, 4),
  ];

  final double horzPadding = 25;
  final double vertPadding = 15;

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
          child: CustomScrollView(slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(
                  vertical: vertPadding, horizontal: horzPadding),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0),
                delegate: SliverChildListDelegate(firstItem),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                  vertical: vertPadding, horizontal: horzPadding),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0),
                delegate: SliverChildListDelegate(gridItems),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class Data {
  Data(this.item1, this.item2);

  final int item1;
  final int item2;
}
