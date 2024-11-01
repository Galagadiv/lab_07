import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 100.0;
  double width = 100.0;
  double radius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding:  const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            children: [
              Text(
                'height: ${height.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20),
              ),
              Slider(
                value: height,
                min: 1,
                max: 100,
                onChanged: (double value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
              Text(
                'width: ${width.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20),
              ),
              Slider(
                value: width,
                min: 1,
                max: 100,
                onChanged: (double value) {
                  setState(() {
                    width = value;
                  });
                },
              ),
              Text(
                'radius: ${radius.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),

              Slider(
                value: radius,
                min: 0,
                max: 100,
                onChanged: (double value) {
                  setState(() {
                    radius = value;
                  });
                },
              ),
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(radius)
                  ),
                  color: const Color(0xFFFF0000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
