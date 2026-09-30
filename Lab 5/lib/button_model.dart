import 'package:flutter/material.dart';

class ButtonModel {
  final String audioName;
  final Color color;

  const ButtonModel({
    required this.audioName,
    required this.color,
  });
}

const allButtons = [
  ButtonModel(audioName: 'note1', color: Colors.red),
  ButtonModel(audioName: 'note2', color: Colors.orange),
  ButtonModel(audioName: 'note3', color: Colors.amber),
  ButtonModel(audioName: 'note4', color: Colors.limeAccent),
  ButtonModel(audioName: 'note5', color: Colors.lightGreenAccent),
  ButtonModel(audioName: 'note6', color: Colors.green),
  ButtonModel(audioName: 'note7', color: Colors.teal),
];
