import 'package:flutter/material.dart';
 Widget appBar(BuildContext context)
 {
  return RichText(
  text: TextSpan(
    style: TextStyle(fontSize: 20,),
    children: const <TextSpan>[
      TextSpan(text: 'Text', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
      TextSpan(text: ' Express', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
    ],
  ),
);
 }