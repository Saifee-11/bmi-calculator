import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text('Your Result',
                style: kTitleTextStyle,),
              )),
          Expanded(
            flex: 5,
              child: Container(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(),
                    style: kResultTextStyle,),
                  Text(bmiResult,
                  style: kBMITextStyle,),
                  Text(interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,)
                ],
              ),
            ),
          )),
          RawMaterialButton(
            child: Text('RE-CALCULATE',
              style: kLargeButtonStyle,),
            onPressed: (){Navigator.push
              (context, MaterialPageRoute(builder: (context) => ResultsPage()));
            },
            fillColor: Color(0xFFEB1555),
          ),
        ],
      ),
    );
  }
}