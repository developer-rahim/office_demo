import 'package:flutter/material.dart';

import '../ImagePicker.dart/imagePicker.dart';
import '../locationPage/location.dart';
import '../question_in_Stepper/Question.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.cyan,

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Center(
                      child: Text('DashBoard',
                          style: TextStyle(color: Colors.black, fontSize: 30)),
                    ),
                  )),
                  Positioned(
                      // top: 20,
                      child: Container(
                    margin: EdgeInsets.only(left: 45, right: 45, top: 115),
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(30)),
                  )),
                  Positioned(
                      // top: 20,
                      child: Container(
                    margin: EdgeInsets.only(left: 50, right: 50, top: 120),
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Main Menu',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome To Essential-Infotech',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Selecter An Option',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        child: Card(
                          elevation: 20,
                          shadowColor: Colors.black38,
                          color: Color.fromRGBO(212, 219, 231, 1),
                          shape: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30))),
                          child: Container(
                            // height: 135,
                            padding: EdgeInsets.all(15),

                            // margin: EdgeInsets.only(bottom: 10),
                            // width: 150,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 226, 221, 221),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Colors.cyanAccent,
                                ),
                                Text(
                                  'Check Profile',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'rrr'),
                                ),
                              ],
                            )),
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/location');
                        },
                        child: Card(
                          elevation: 20,
                          shadowColor: Colors.black38,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30))),
                          child: Container(
                            // height: 135,
                            padding: EdgeInsets.all(20),

                            // // margin: EdgeInsets.only(bottom: 10),
                            // width: 150,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 226, 221, 221),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 40,
                                  color: Colors.purpleAccent,
                                ),
                                Text(
                                  'Locaiton',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'rrr'),
                                ),
                              ],
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/imagepicker');
                    },
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.black38,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: Container(
                        // height: 135,
                        padding: EdgeInsets.all(20),

                        // margin: EdgeInsets.only(bottom: 10),
                        // width: 150,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 226, 221, 221),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.upload_file_rounded,
                              size: 40,
                              color: Colors.pinkAccent,
                            ),
                            Text(
                              'Upload File',
                              style: TextStyle(fontSize: 18, fontFamily: 'rrr'),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/imagepicker');
                    },
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.black38,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: Container(
                        // height: 135,
                        padding: EdgeInsets.all(18),

                        // margin: EdgeInsets.only(bottom: 10),
                        // width: 150,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 226, 221, 221),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30))),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.upload_file,
                                size: 40, color: Colors.blueAccent),
                            Text(
                              'Upload Image',
                              style: TextStyle(fontSize: 18, fontFamily: 'rrr'),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StepperQuestion()));
                  },
                  child: Card(
                    elevation: 20,
                    shadowColor: Colors.black38,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Container(
                      // height: 135,
                      padding: EdgeInsets.all(8),

                      // margin: EdgeInsets.only(bottom: 10),
                      // width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 226, 221, 221),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.reviews,
                            size: 40,
                            color: Colors.deepOrangeAccent,
                          ),
                          Text(
                            'Feed Back',
                            style: TextStyle(fontSize: 18, fontFamily: 'rrr'),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
