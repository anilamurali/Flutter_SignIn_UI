import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/signup.dart';
import 'package:device_preview/device_preview.dart';

import 'loginpage.dart';

void main(){
  runApp(
    DevicePreview(builder: (context)  {
      enabled :!kReleaseMode;
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: HomeScreen(),

      );
    })

  );

}

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const  Padding(
              padding:  EdgeInsets.only(top: 20),
              child: Text("Hello There",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            ),
           const Padding(
              padding:  EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Text("Automatic identity verification which enables you to verify your identy"),
            ),
           const Padding(
              padding:  EdgeInsets.only(top: 20),
              child: Image(image: AssetImage("assets/icons/man.png"),height: 100,width: 100,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 60,
                width: 250,
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                }, child: Text("Login"),style: ElevatedButton.styleFrom(shape: StadiumBorder()),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 60,
                width: 250,
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
                }, child: Text("Sign Up"),style: ElevatedButton.styleFrom(shape: StadiumBorder()),
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