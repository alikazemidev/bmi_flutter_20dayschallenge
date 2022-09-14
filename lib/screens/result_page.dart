import 'package:bmi_flutter_20dayschallenge/constants/style&color.dart';
import 'package:bmi_flutter_20dayschallenge/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('bmi challenge'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              bottom: 20,
            ),
            child: Text(
              'Your Result',
              style: kNumberTextStyle,
            ),
          ),
          Expanded(
            child: ReUsableCard(
              clr: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'aaa',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '28.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'your bmi is noraml you can eat more food.',
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'reCalculate'.toUpperCase(),
                  style: kNumberTextStyle.copyWith(fontSize: 30),
                ),
              ),
              width: double.infinity,
              height: kBottomContainerHeight,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                ),
                color: kBottomContainerColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
