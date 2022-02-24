import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/checkBox.dart';

import '../widgets/Congratulation.dart';

class StepperQuestion extends StatefulWidget {
  const StepperQuestion({Key? key}) : super(key: key);

  @override
  _StepperQuestionState createState() => _StepperQuestionState();
}

class _StepperQuestionState extends State<StepperQuestion> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feed Back',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Stepper(
                steps: [
                  Step(
                      isActive: _currentStep >= 0,
                      title: Text(
                        'FeedBack 1',
                        style: TextStyle(fontSize: 20),
                      ),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Do You Know About Essential-Infotechc ?',
                            style: TextStyle(fontSize: 20),
                          ),
                          Column(
                            children: [
                              checkbox(
                                text1: 'yes',
                                text2: 'no',
                              ),
                            ],
                          )
                        ],
                      )),
                  Step(
                      isActive: _currentStep >= 1,
                      title: Text(
                        'FeedBack 2',
                        style: TextStyle(fontSize: 20),
                      ),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What is influencing Side of Essential-Infotechc ?',
                            style: TextStyle(fontSize: 20),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              checkbox(
                                text1: 'Friendly Environment',
                                text2: 'oppartunity to learn',
                              ),
                            ],
                          )
                        ],
                      )),
                  Step(
                      isActive: _currentStep >= 2,
                      title: Text(
                        'FeedBack 3',
                        style: TextStyle(fontSize: 20),
                      ),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What is Flutter ?',
                            style: TextStyle(fontSize: 22),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              checkbox(
                                text1: 'Google Developed Software Kit',
                                text2: 'Cross Plateform Software Kit',
                              ),
                            ],
                          )
                        ],
                      )),
                  Step(
                      isActive: _currentStep >= 3,
                      title: Text(
                        'FeedBack 4',
                        style: TextStyle(fontSize: 20),
                      ),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What is Class ?',
                            style: TextStyle(fontSize: 22),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              checkbox(
                                text1: 'Google Developed Software Kit',
                                text2: 'Cross Plateform Software Kit',
                              ),
                            ],
                          )
                        ],
                      )),
                  Step(
                      isActive: _currentStep >= 4,
                      title: Text(
                        'FeedBack 5',
                        style: TextStyle(fontSize: 20),
                      ),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What is object ?',
                            style: TextStyle(fontSize: 22),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              checkbox(
                                text1: 'Google Developed Software Kit',
                                text2: 'Cross Plateform Software Kit',
                              ),
                            ],
                          )
                        ],
                      )),
                  Step(
                      isActive: _currentStep >= 5,
                      title: Text(
                        'FeedBack 6',
                        style: TextStyle(fontSize: 20),
                      ),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What is API ?',
                            style: TextStyle(fontSize: 22),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              checkbox(
                                text1: 'Google Developed Software Kit',
                                text2: 'Cross Plateform Software Kit',
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Congratulation()));
                                },
                                child: Container(
                                  // height: 45,
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.only(bottom: 10),
                                  width: 400,
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(35)),
                                  child: Center(
                                      child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        fontSize: 25, fontFamily: 'rrr'),
                                  )),
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                ],
                onStepTapped: (newIndex) {
                  _currentStep == newIndex;
                },
                currentStep: _currentStep,
                onStepContinue: () {
                  if (_currentStep != 5) {
                    setState(() {
                      _currentStep += 1;
                    });
                  }
                },
                onStepCancel: () {
                  if (_currentStep != 0) {
                    setState(() {
                      _currentStep -= 1;
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
