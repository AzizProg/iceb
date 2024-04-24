import 'package:iceb/data/data_source/remote/remote_data_source.dart';
import 'package:iceb/data/data_source/remote/remote_data_source_impl.dart';
import 'package:iceb/domain/entity/celebrity.dart';
import 'package:iceb/domain/repository/repository.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl({required RemoteDataSourceImpl remote})
      : _remoteDataSource = remote;
  final RemoteDataSourceImpl _remoteDataSource;
  @override
  Future<List<CelebrityEntity>> getCelebrities() async {
    return _remoteDataSource.getCelebrities().then((value) => value
        .map((e) => CelebrityEntity(
            id: e.id,
            name: e.name,
            biography: e.biography,
            profession: e.profession,
            image: e.image,
            companies: e.companies))
        .toList(),);
  }
}
