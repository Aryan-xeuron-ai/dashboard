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
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                Glass(
                  height: 250.0,
                  width: 400.0,
                ),
                SizedBox(
                  height: 20,
                ),
                Positioned(

                    child: GlassLine(
                    height: 250.0,
                    width: 250.0,
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
