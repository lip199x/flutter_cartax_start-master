import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarType01 extends StatelessWidget {
  final int cc;
  final int year;
  final Function changeCC;
  final Function changeYear;
  CarType01(this.cc, this.year, this.changeCC, this.changeYear);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.2),
              ),
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CUBIC CENTIMETRES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          '\n${(cc * 100).toString()} cc\n',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.orangeAccent[100],
                        thumbColor: Colors.orangeAccent,
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: cc.toDouble(),
                        min: 6,
                        max: 30,
                        onChanged: (newValue) {
                          changeCC(newValue);
                          //Add code here
                        },
                      ),
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.2),
              ),
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'YEAR',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\n${year.toString()}" +
                          ((year > 1) ? 'year\n' : 'year\n'),
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RawMaterialButton(
                          elevation: 0.0,
                          child: Icon(FontAwesomeIcons.minus),
                          onPressed: () => changeYear(year - 1),
                          constraints: BoxConstraints.tightFor(
                            width: 56.0,
                            height: 56.0,
                          ),
                          shape: CircleBorder(),
                          fillColor: Color(0xFF4C4F5E),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RawMaterialButton(
                          elevation: 0.0,
                          child: Icon(FontAwesomeIcons.plus),
                          onPressed: () => changeYear(year + 1),
                          constraints: BoxConstraints.tightFor(
                            width: 56.0,
                            height: 56.0,
                          ),
                          shape: CircleBorder(),
                          fillColor: Color(0xFF4C4F5E),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
