import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller_Page/logic_controller.dart';

import 'package:provider/provider.dart';

class checkbox extends StatefulWidget {
  var text1;
  var text2;
  checkbox({this.text1 = '', this.text2 = ''});

  @override
  _checkboxState createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  // var isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<ViewLogicModel>(
      builder: (context, check, child) => Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(
                    // checkColor: Colors.white,

                    // fillColor: MaterialStateProperty.resolveWith(getColor),

                    value: check.ischected,

                    onChanged: (bool? value) {
                      check.checkbox1();
                    },
                  ),
                  Text(widget.text1,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    // checkColor: Colors.white,

                    // fillColor: MaterialStateProperty.resolveWith(getColor),

                    value: check.ischected2,

                    onChanged: (bool? value) {
                      check.checkbox2();
                    },
                  ),
                  Text(widget.text2,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
