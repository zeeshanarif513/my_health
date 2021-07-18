import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FitnessAndHealthCalculator extends StatefulWidget {
  @override
  _FitnessAndHealthCalculatorState createState() =>
      _FitnessAndHealthCalculatorState();
}

class _FitnessAndHealthCalculatorState
    extends State<FitnessAndHealthCalculator> {
  @override
  Widget build(BuildContext context) {
    return MySliverBar();
  }
}

class MySliverBar extends StatelessWidget {
  List<String> calculators = <String>[
    "BMI Calculator",
    "BMR Calculator",
    "Calorie Calculator",
    "Ideal Weight Calculator",
    "Protein Calculator",
    "Body Fat Calculator",
    "Water Intake"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 150.0,
              pinned: true,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Fitness And Health Calculator'),
                background: Image.asset(
                  "images/photo.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  tooltip: 'Add new entry',
                  onPressed: null,
                ),
              ]),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return GestureDetector(
              child: Container(
                margin: EdgeInsets.all(2.0),
                height: 80,
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage("images/photo.jpg"),
                  //   fit: BoxFit.cover
                  // ),
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  child: Text(
                    calculators[index],
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
              ),
            );
          }, childCount: calculators.length)),
        ],
      ),
    );
  }
}
