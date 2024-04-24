import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iceb/data/data_source/remote/remote_data_source.dart';
import 'package:iceb/data/models/celebrity_model.dart';

class RemoteDataSourceImpl extends RemoteDataSource {
  RemoteDataSourceImpl({required FirebaseFirestore firestore})
      : _firestore = firestore;

  FirebaseFirestore _firestore;
  @override
  Future<List<CelebrityModel>> getCelebrities() async {
    return _firestore.collection('celebrities').get().then(
          (value) =>
              value.docs.map((e) => CelebrityModel.fromJson(e.data())).toList(),
          onError: (e) => print(e),
        );
  }
}
