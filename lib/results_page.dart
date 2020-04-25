import 'package:bmi_calculator/bottombutton.dart';

import 'constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class Resultspage extends StatelessWidget {

  Resultspage({this.bmiindex,this.result,this.interpretation});
  final String bmiindex;
  final String result;
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
           child:Container(
             alignment: Alignment.bottomLeft,
             padding: EdgeInsets.all(10.0),
           child: Text('Your result',
           textAlign: TextAlign.center,
           style: kTextTitleStyle
           ),
         ),
         ),
         Expanded(
           flex: 5,
           child:ReusableCard(
             colour: kActiveCardColor,
             cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center, 
             children: <Widget>[
               Text(result.toUpperCase(),
               style: kResultTextStyle,
               ),
               Text(bmiindex,
               style: kBMITextStyle,
               ),
               Text(interpretation,
               style: kBodyTextStyle,
               )
             ],  
             ),
           )
           ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonText: 'RE-CALCULATE') 
       ], 
      ),
    );
  }
}