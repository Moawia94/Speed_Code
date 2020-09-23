import 'package:flutter/material.dart';
import 'package:flutter_UI_Home_Screen_Speed_Code/home_icon_buttoms.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF363567),
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        color: Color(0xFF373856),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'images/Icon7.png',
                height: 60,
                width: 60,
              ),
              Image.asset(
                'images/Icon8.png',
                height: 60,
                width: 60,
              ),
              Image.asset(
                'images/Icon9.png',
                height: 60,
                width: 60,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Transform.rotate(
                origin: Offset(30, -60),
                angle: 2.4,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 75,
                    top: 40,
                  ),
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      colors: [Color(0xffFD8BAB), Color(0xFFFD44C4)],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Glassify Transaction',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Glassify this transaction into a \n pticular catigory ',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CatigoryW(
                                image: 'images/Icon1.png',
                                text: 'General',
                                color: Color(0xFF47B4FF),
                              ),
                              CatigoryW(
                                image: 'images/Icon2.png',
                                text: 'Transport',
                                color: Color(0xFFA885FF),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CatigoryW(
                                image: 'images/Icon3.png',
                                text: 'Shopping',
                                color: Color(0xFFFD47DF),
                              ),
                              CatigoryW(
                                image: 'images/Icon4.png',
                                text: 'Bills',
                                color: Color(0xFFFD8C44),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CatigoryW(
                                image: 'images/Icon5.png',
                                text: 'Entertainment',
                                color: Color(0xFF7DA4FF),
                              ),
                              CatigoryW(
                                image: 'images/Icon6.png',
                                text: 'Grocery',
                                color: Color(0xFF43DC64),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
