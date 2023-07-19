import 'package:flutter/material.dart';

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
                Expanded(child: ReusebleCard()),
                Expanded(child: ReusebleCard()),
              ],
            ),
          ),
          Expanded(child: ReusebleCard()),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusebleCard()),
                Expanded(child: ReusebleCard()),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ReusebleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff1d1e33),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(15),
    );
  }
}
