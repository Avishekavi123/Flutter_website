import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website_project1/popup_screen.dart';
import 'package:website_project1/question.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int questionnum = 0;
  var nextquestion = question();

  creatallertdiague(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: 500.h,
            width: 800.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 80.0.w, top: 80.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Download the best \n100 question',
                        style: TextStyle(
                          color: Color(0xff4f7c87),
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        text1,
                        style: TextStyle(
                          color: Color(0xff4f7c87),
                          fontWeight: FontWeight.w100,
                          fontSize: 17.sp,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        width: 300.w,
                        child: Card(
                          color: Color(0xffefeeed),
                          elevation: 3,
                          child: TextFormField(
                            cursorColor: Colors.green,
                            decoration: InputDecoration(
                              hintText: 'Email',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 120.0.w),
                        child: FlatButton(
                          onPressed: () { },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Color(0xff4f7c87),
                            ),
                            height: 35.h,
                            width: 150.h,
                            child: Center(
                              child: Text(
                                'Get the E-book',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
               Padding(
                 padding:  EdgeInsets.only(left: 8.0.w),
                 child: Container(
                   child: Image.asset('assets/books1.png',
                     height: 1500.h,
                     width: 400.w,

                   ),
                 ),
               ),
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
          elevation: 12,
          backgroundColor: Colors.white,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f6f6),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w, top: 20.h),
                child: Image.asset(
                  'assets/websitepic.png',
                  height: 100,
                  width: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.h, left: 690.0.w),
                child: Container(
                  height: 40.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xff4f7c87),
                        spreadRadius: 3,
                        blurRadius: 3,
                        // offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color(0xfff3f6f6),
                    borderRadius: BorderRadius.circular(1),
                  ),
                  child: const Center(
                    child: Text(
                      'Record their answer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4f7c87),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.h),
            child: Center(
              child: Container(
                child: Text(
                  'Grow closer to your loved ones \n by asking them this question',
                  style: TextStyle(
                    color: Color(0xff4f7c87),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: 600.w,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.white,
            ),
            child: Center(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    nextquestion.questions[questionnum],
                    // text,
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: Color(0xff4f7c87),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 300.0.w),
                child: FlatButton(
                  onPressed: () {
                    copytoast();
                    creatallertdiague(context);

                  },
                  child: Container(
                    height: 35.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      color: Color(0xff4f7c87),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Row(
                          children: [
                            Icon(
                              Icons.copy,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Copy this question',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 40.w,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    // int index=
                    questionnum++;
                    // text=   questions[index];
                  });
                  print(questionnum);
                },
                child: Container(
                  height: 35.h,
                  width: 180.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff4f7c87),
                        spreadRadius: 2.r,
                        // offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color(0xfff3f6f6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Row(
                        children: [
                          Icon(
                            Icons.refresh,
                            color: Color(0xff4f7c87),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Text(
                              'Try another one',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4f7c87),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 130.h),
          Text(
            'Made with love by timewall',
            style: TextStyle(
              color: Color(0xff4f7c87),
            ),
          ),
        ],
      ),
    );
  }

  void copytoast() {


    Fluttertoast.showToast(
        msg: "Question Copied",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        // backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
        // dynamic webBgColor = "linear-gradient(to right, #00b09b, #96c93d)",
        webBgColor: "linear-gradient(to right, #00b09b, #96c93d)",
    );

  }
}
