import 'package:bayanatz_task/features/create_location/domain/location_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LocationRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _collectionPath = 'locations';

  /// Store a new location
  Future<void> addLocation(LocationModel location) async {
    try {
      final docRef = _firestore.collection(_collectionPath).doc();

      final newLocation = location.copyWith(locationId: docRef.id);

      await docRef.set(newLocation.toJson());
    } catch (e) {
      throw Exception('Error adding location: $e');
    }
  }
}
