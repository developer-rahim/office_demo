import 'package:flutter/material.dart';

import 'package:flutter_application_1/locationPage/location.dart';
import 'package:flutter_application_1/question_in_Stepper/Question.dart';
import 'package:flutter_application_1/widgets/Congratulation.dart';
import 'package:flutter_application_1/widgets/Profile.dart';
import 'package:provider/provider.dart';

import 'Home_Screen/DashBordScreen.dart';
import 'Home_Screen/LoginPage.dart';
import 'ImagePicker.dart/imagePicker.dart';
import 'controller_Page/logic_controller.dart';

void main() {
  runApp((MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ViewLogicModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Demo App',
        theme: ThemeData(fontFamily: 'rrr'),
        home: DashBoardScreen(),
        routes: {
          '/dashborh': (context) => DashBoardScreen(),
          '/profile': (context) => ProfilePage(),
          '/location': ((context) => LocationTracking()),
          '/imagepicker': (context) => ImagePick(),
          '/loginpage': (context) => LoginPage(),
          '/stepperquestion': (context) => StepperQuestion()
        },
      ))));
}
