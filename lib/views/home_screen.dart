import 'package:flutter/material.dart';
import '../viewmodels/class_viewmodel.dart';
import '../viewmodels/event_viewmodel.dart';
import 'class_card.dart';
import 'event_card.dart';

class HomeScreen extends StatelessWidget {
  final ClassViewModel classViewModel = ClassViewModel();
  final EventViewModel eventViewModel = EventViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Next Classes', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            ...classViewModel
                .getClasses()
                .map((classModel) => ClassCard(classModel: classModel))
                .toList(),
            SizedBox(height: 20),
            Text('Events', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            ...eventViewModel
                .getEvents()
                .map((eventModel) => EventCard(eventModel: eventModel))
                .toList(),
          ],
        ),
      ),
    );
  }
}
