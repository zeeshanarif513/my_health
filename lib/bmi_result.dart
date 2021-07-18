import 'package:flutter/material.dart';
import 'package:my_health/bmi_calculator.dart';

class BMIResult extends StatelessWidget {
  double bmi;

  BMIResult({this.bmi});

  @override
  Widget build(BuildContext context) {
    String msg;
    Color color;
    if (bmi < 15) {
      msg = "Very severely underweight";
      color = Colors.orange;
    } else if (bmi < 16) {
      msg = "Severely underweight";
      color = Colors.orange;
    } else if (bmi < 18.5) {
      msg = "Underweight";
      color = Colors.orange;
    } else if (bmi < 25) {
      msg = "Normal (healthy weight)";
      color = Colors.green;
    } else if (bmi < 35) {
      msg = "Moderately obese";
      color = Colors.red;
    } else if (bmi < 40) {
      msg = "Severely obese";
      color = Colors.red;
    } else {
      msg = "Very severely obese";
      color = Colors.red;
    }
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
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    msg,
                    style: TextStyle(
                        color: color,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(85),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white54.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 15,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                        child: Text(
                      bmi.toStringAsFixed(1),
                      style: TextStyle(fontSize: 45, color: Colors.white),
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Image.asset(
                      "images/bmirange.PNG",

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BMICalculator()),
                              );
                            },
                            child: Text(
                              "RE-CALCULATE",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
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
          ],
        ),
      ),
    );
  }
}
