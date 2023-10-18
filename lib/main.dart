import 'package:flutter/material.dart';
import 'package:todoapplication/screens/homescreen.dart';

import 'colors.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  final colors=const AppColors();
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   
    return const MaterialApp(
      
     
      home:  HomeScreen(),
    );
  }
}
/*class AppColors{
  final mainBG=const Color.fromARGB(1, 16, 28, 46);
  final mainText=const Color.fromARGB(1, 93, 140, 254);
  final iconBg=const Color.fromARGB(1, 97, 141, 255);
  final cardBgBlue=const Color.fromARGB(1, 156, 236, 254);
  final cardBgYellow=const Color.fromARGB(1, 255, 249, 112);
  final subText=const Color.fromARGB(1, 83, 98, 122);
  //constructor to initialize
  const AppColors();

}*/