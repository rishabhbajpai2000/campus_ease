import 'package:campus_ease/loginScreens/signUpPage3.dart';
import 'package:flutter/material.dart';

class LoginScreenThree extends StatefulWidget {
  @override
  State<LoginScreenThree> createState() => _LoginScreenThreeState();
}

class _LoginScreenThreeState extends State<LoginScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // progress bar
              Expanded(
                flex: 1,
                child: Expanded(
                    child: Container(
                        child: Center(
                            child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                  backgroundColor: Color(0xffC4C4C4),
                  value: 0.4,
                )))),
              ),

              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "\nStudent ID, Let's go! \n",
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          )),

                      // we protect our community
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "We protect our community by making sure everyone on CampusEase is a student. \n \n",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          )),

                      // box to enter user id
                      Container(
                        height: 40,
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffDDDDE4),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter email ID'),
                          ),
                        ),
                      ),

                      // Middle image of the page.
                      Image.asset(
                          "assets/images/loginscreen/loginscreen2image.png"),

                      // space between image and next button
                      Expanded(
                        flex: 5,
                        child: Container(),
                      ),

                      // next button.
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreenFour()));
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFDDDDE4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                              child: Text(
                            "Next",
                            style: TextStyle(fontSize: 18),
                          )),
                        ),
                      )
                    ],
                  )),
              // student Id lets go
            ],
          ),
        ),
      ),
    );
  }
}
