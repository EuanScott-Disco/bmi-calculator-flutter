import 'package:bmi_calculator/models/bmi_data.model.dart';
import 'package:flutter/material.dart';

import '../theming/theming.dart' as ThemingConstants;
import '../widgets/footer_button.dart';
import '../widgets/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiData});

  final BMIData bmiData;

  Color _getTextColour() {
    return bmiData.bmiStatus != ResultText.NORMAL.name
        ? Color(0xFFFF1919)
        : Color(0xFF24D876);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: ThemingConstants.kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: ThemingConstants.kActiveCardColour,
              borderColour: _getTextColour(),
              cardContent: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiData.bmiStatus,
                    style: TextStyle(
                      color: _getTextColour(),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiData.bmi.toString(),
                    style: ThemingConstants.kBMITextStyle,
                  ),
                  Text(
                    bmiData.bmiInterpretation,
                    textAlign: TextAlign.center,
                    style: ThemingConstants.kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          FooterButton(
            text: 'Re-calculate',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
