import '../models/event_model.dart';

class EventViewModel {
  List<EventModel> getEvents() {
    return [
      EventModel(
        title: 'Comedy Show',
        dateTime: '26 Apr, 6:30 PM',
        imageUrl:
            'assets/images/comedy.png', // Ganti dengan nama file gambar Anda
      ),
      EventModel(
        title: 'Concert',
        dateTime: '30 Apr, 8:00 PM',
        imageUrl:
            'assets/images/concert.png', // Ganti dengan nama file gambar Anda
      ),
    ];
  }
}
