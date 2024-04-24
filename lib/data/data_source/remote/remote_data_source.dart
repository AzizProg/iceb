import 'package:iceb/data/models/celebrity_model.dart';

abstract class RemoteDataSource<T> {
  Future<T> getCelebrities();
}