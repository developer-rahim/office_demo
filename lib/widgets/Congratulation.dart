import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Home_Screen/DashBordScreen.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  _CongratulationState createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
                'https://media.istockphoto.com/photos/paint-splatter-thank-you-picture-id1132817705?b=1&k=20&m=1132817705&s=170667a&w=0&h=fAlE3Lb0PPIySZ_otp-vv92H7F-e1lu4VjrFg4bJAUk='),
            Text(
              'Thanks',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            Text(
              'For Your Valuable FeedBack',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DashBoardScreen()));
              },
              child: Container(
                // height: 45,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(bottom: 10),
                width: 400,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(125, 197, 152, 1),
                    borderRadius: BorderRadius.circular(35)),
                child: Center(
                    child: Text(
                  'Back To DashBoard',
                  style: TextStyle(fontSize: 25, fontFamily: 'rrr'),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
