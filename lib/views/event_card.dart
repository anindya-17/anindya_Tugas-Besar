// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../models/event_model.dart';

class EventCard extends StatelessWidget {
  final EventModel eventModel;

  EventCard({required this.eventModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(eventModel.imageUrl, height: 100, fit: BoxFit.cover),
          ListTile(
            title: Text(eventModel.title),
            subtitle: Text(eventModel.dateTime),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calendar_today, color: Colors.blue),
              Icon(Icons.share, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
