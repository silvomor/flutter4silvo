import 'package:bmiapp/screens/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import '../components/rounded_button.dart';
import 'package:bmiapp/constants.dart';
import 'package:bmiapp/components/bottomButton.dart';
import 'package:bmiapp/calculator.dart';

enum Gender { Male, Female }
int userHeight = 180;
int userWeight = 60;
int userAge = 18;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    colour: selectedGender == Gender.Male
                        ? kActiveWidgetColor
                        : kInactiveWidgetColor,
                    cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                  )),
                  Expanded(
                      child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    colour: selectedGender == Gender.Female
                        ? kActiveWidgetColor
                        : kInactiveWidgetColor,
                    cardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                  )),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveWidgetColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT', style: kLableTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(userHeight.toString(), style: kSymbolTextStyle),
                        Text(
                          'cm',
                          style: kLableTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D898),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 25.0)),
                      child: Slider(
                          value: userHeight.toDouble(),
                          min: 100.0,
                          max: 220.0,
                          onChanged: (double userNewHeight) {
                            setState(() {
                              userHeight = userNewHeight.round();
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                          colour: kActiveWidgetColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Weight',
                                style: kLableTextStyle,
                              ),
                              Text(
                                userWeight.toString(),
                                style: kSymbolTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundedIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () {
                                        setState(() {
                                          userWeight--;
                                        });
                                      }),
                                  SizedBox(
                                    width: 12.5,
                                  ),
                                  RoundedIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        userWeight++;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ))),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveWidgetColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kLableTextStyle,
                          ),
                          Text(
                            userAge.toString(),
                            style: kSymbolTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      userAge--;
                                    });
                                  }),
                              SizedBox(
                                width: 12.5,
                              ),
                              RoundedIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      userAge++;
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonName: 'CALCULATE',
              onTap: () {
                Calculator calc = Calculator(userHeight, userWeight);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              calc.calculateBMI(),
                              calc.getResult(),
                              calc.getComment(),
                            )));
              },
            ),
          ],
        ));
  }
}
