import 'package:flutter/material.dart';
import 'package:learning_responsive_screen/Mobile-Screen/mobile_screen.dart';
import 'package:learning_responsive_screen/Web-Screen/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Builder(
            builder: (BuildContext context){
              if (MediaQuery.of(context).size.width.toInt() <= 500) {
                return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 0.8),
                    child: MobileScreenResponsive());
              } else {
                return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 0.8),
                    child: WebScreenResponsive());
              }
            }
        )
    );
  }
}
/*
LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            print(constraints.minWidth.toInt());
            if (constraints.minWidth.toInt() <= 500) {
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 0.8),
                  child: MobileScreenResponsive());
            } else {
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 0.8),
                  child: WebScreenResponsive());
            }
          },
        )
* */