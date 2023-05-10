import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 180;
  int weight = 120;
  int age = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.notifications),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColour,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColour,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus,
                  label: 'FEMALE',
                ),
                ),
              )
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT',
                  style: kLabelTextStyle
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(),
                      style: kNumberTextStyle,),
                      Text('cm',style:
                      kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();
                        });
                      })
                ],
              ),
            ),),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    children: <Widget>[
                      Text('WEIGHT',
                      style: kLabelTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('120',
                          style: kNumberTextStyle,)
                        ],
                      )
                    ],
                  ),
                ),),
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                cardChild: Column(
                  children: <Widget>[
                    Text('AGE',
                    style: kLabelTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('100',
                        style: kNumberTextStyle,)
                      ],
                    )
                  ],
                ),),)
            ],
          )),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      )
    );
  }
}


