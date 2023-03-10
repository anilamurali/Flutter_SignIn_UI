import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
        "Contact Book",style: TextStyle(
          color: Color.fromARGB(255, 1, 12, 20)),
      
      ),),
      body: const Center(
        child:Text("Add Contacts Here",
        style: TextStyle(
          color: Color.fromARGB(255, 2, 40, 59)),) ),
    );
  }

}