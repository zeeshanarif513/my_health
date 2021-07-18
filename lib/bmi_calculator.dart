import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_health/bmi_result.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  bool gender = true; //true means male and vice versa
  double height = 150, weight = 50;
  int age = 20;

  alterGender() {
    setState(() {
      this.gender = !this.gender;
    });
  }

  incrementWeight() {
    setState(() {
      weight++;
    });
  }

  decrementWeight() {
    setState(() {
      if (weight > 0) {
        weight--;
      }
    });
  }

  incrementAge() {
    setState(() {
      age++;
    });
  }

  decrementAge() {
    setState(() {
      if (age > 0) {
        age--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () => alterGender(),
                        child: Material(
                          elevation: 6.0,
                          shadowColor: Colors.white54,
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: gender == true
                                  ? Border.all(
                                      color: Colors.pinkAccent,
                                      width: 3,
                                    )
                                  : null,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  MdiIcons.humanMale,
                                  color: Colors.white,
                                  size: 50,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => alterGender(),
                        child: Material(
                          elevation: 6.0,
                          shadowColor: Colors.white54,
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: gender == false
                                  ? Border.all(
                                      color: Colors.pinkAccent,
                                      width: 3,
                                    )
                                  : null,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  MdiIcons.humanFemale,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Material(
                  elevation: 6.0,
                  shadowColor: Colors.white54,
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black87,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          height.round().toString() + " cm",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 0.0,
                          max: 300.0,
                          divisions: 120,
                          activeColor: Colors.pinkAccent,
                          inactiveColor: Colors.pinkAccent,
                          onChanged: (double newHeight) {
                            setState(() {
                              height = newHeight;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Material(
                        elevation: 6.0,
                        shadowColor: Colors.white54,
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black87,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "AGE",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                age.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900),
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: Transform.scale(
                                          scale: 0.8,
                                          child: FloatingActionButton(
                                            onPressed: incrementAge,
                                            backgroundColor: Colors.white10,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: Transform.scale(
                                          scale: 0.8,
                                          child: FloatingActionButton(
                                            onPressed: decrementAge,
                                            backgroundColor: Colors.white10,
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: Material(
                        elevation: 6.0,
                        shadowColor: Colors.white54,
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black87,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "WEIGHT",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                weight.round().toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900),
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: Transform.scale(
                                          scale: 0.8,
                                          child: FloatingActionButton(
                                            onPressed: incrementWeight,
                                            backgroundColor: Colors.white10,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: Transform.scale(
                                          scale: 0.8,
                                          child: FloatingActionButton(
                                            onPressed: decrementWeight,
                                            backgroundColor: Colors.white10,
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          double BMI = weight / (height * height) * 10000;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BMIResult(bmi: BMI)),
                          );
                        },
                        child: Text(
                          "CALCULATE",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.pinkAccent),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
