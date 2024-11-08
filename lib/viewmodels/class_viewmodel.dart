import '../models/class_model.dart';

class ClassViewModel {
  List<ClassModel> getClasses() {
    return [
      ClassModel(
        title: 'Art Workshop',
        time: 'Today, 08:15 AM',
        instructor: 'Jane Cooper',
        imageUrl:
            'assets/images/art workshop.jpg', // Ganti dengan nama file gambar Anda
      ),
      ClassModel(
        title: 'Dancer Show',
        time: 'Tomorrow, 10:00 AM',
        instructor: 'John Doe',
        imageUrl:
            'assets/images/dancer.jpg', // Ganti dengan nama file gambar Anda
      ),
    ];
  }
}
