import 'package:bmi_flutter_20dayschallenge/constants/style&color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/icon_content.dart';
import '../widgets/reusable_card.dart';
import '../constants/style&color.dart';

enum Gender {
  male,
  female,
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('bmi challenge'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReUsableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  clr: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    title: 'MALE',
                  ),
                ),
                ReUsableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  clr: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    title: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          ReUsableCard(
            clr: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: kLableTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      "cm",
                      style: kLableTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: Color(0xffeb1555),
                    inactiveTrackColor: Color(0xff8d8e98),
                    activeTrackColor: Colors.white,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 15,
                    ),
                    overlayColor: Color(0x29eb1555),
                    overlayShape: RoundSliderOverlayShape(
                      overlayRadius: 30,
                    ),
                  ),
                  child: Slider(
                    min: 120.0,
                    max: 220.0,
                    value: height.toDouble(),
                    // activeColor: Color(0xffeb1555),
                    // inactiveColor: Color(0xff8d8e98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReUsableCard(
                  clr: kActiveCardColor,
                ),
                ReUsableCard(
                  clr: kActiveCardColor,
                ),
              ],
            ),
          ),
          Container(
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
        ],
      ),
    );
  }
}
