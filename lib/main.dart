import 'package:exam_3/Screen/addScreen.dart';
import 'package:exam_3/Screen/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'add': (context) => AddScreen(),
        },
      )
  );
}