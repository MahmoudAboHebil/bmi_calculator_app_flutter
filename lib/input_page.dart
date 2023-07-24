import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/icon_content.dart';
import 'widgets/reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xffeb1555);
const activeCardColour = Color(0xff1d1e33);
const inActiveCardColour = Color(0xff111328);

enum Gender {
  male,
  female;
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CACULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      selectedGender == Gender.male
                          ? activeCardColour
                          : inActiveCardColour,
                      IconContent(FontAwesomeIcons.mars, 'MAlE'), () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  }),
                ),
                Expanded(
                  child: ReusableCard(
                    selectedGender == Gender.female
                        ? activeCardColour
                        : inActiveCardColour,
                    IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                    () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(activeCardColour, Container(), () {})),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(activeCardColour, Container(), () {})),
                Expanded(
                    child: ReusableCard(activeCardColour, Container(), () {})),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
