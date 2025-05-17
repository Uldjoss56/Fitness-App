import 'dart:ui';

import 'package:fitness_app/core/constants/colors.dart';
import 'package:fitness_app/core/widgets/arc_paint.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Image.asset(
                  "assets/imgs/photos/athletic_01.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              decoration: BoxDecoration(color: myWhite11),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: myOrange,
                              shape: BoxShape.circle,
                            ),
                            child: RotatedBox(
                              quarterTurns: 6,
                              child: CustomPaint(painter: ArcPainter()),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Train with",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Achieve Your Fitness Goals",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Anytime",
                            style: Theme.of(context).textTheme.headlineLarge
                                ?.copyWith(color: myOrange),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Dare to be free with the Fitness Coach Only on The Fitness App",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SizedBox(height: 80),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.push("/main_screen");
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        height: 80,
                        decoration: BoxDecoration(
                          color: myOrange,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Let's Get Started",
                              style: Theme.of(
                                context,
                              ).textTheme.headlineLarge?.copyWith(fontSize: 25),
                            ),
                            SizedBox(width: 20),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: myWhite,
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                color: myBlack,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
