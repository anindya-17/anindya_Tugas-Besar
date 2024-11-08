// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../models/class_model.dart';

class ClassCard extends StatelessWidget {
  final ClassModel classModel;

  ClassCard({required this.classModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[100],
      child: Column(
        children: [
          Image.asset(classModel.imageUrl, height: 100, fit: BoxFit.cover),
          ListTile(
            title: Text(classModel.title),
            subtitle: Text('${classModel.time}\n${classModel.instructor}'),
            isThreeLine: true,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.info, color: Colors.blue),
              Icon(Icons.favorite_border, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
