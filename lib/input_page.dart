import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/iconContent.dart';
import 'widgets/reusableCard.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xffeb1555);
const activeCardColour = Color(0xff1d1e33);

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    activeCardColour,
                    IconContent(FontAwesomeIcons.mars, 'MAlE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    activeCardColour,
                    IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(activeCardColour, Container())),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(activeCardColour, Container())),
                Expanded(child: ReusableCard(activeCardColour, Container())),
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
