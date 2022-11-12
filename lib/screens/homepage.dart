import 'package:dashboard/widgets/glassEffect.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/constants/values.dart';

import '../widgets/glassLine.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Glass(
                height: 250.0,
                width: 400.0,
              ),
              Positioned(
                left: 0,
                top: 250,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: GlassLine(
                    height: 220.0,
                    width: 220.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
