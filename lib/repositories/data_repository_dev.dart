import 'package:dependency_injection/configs/env.dart';
import 'package:dependency_injection/repositories/data_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(env: [Env.dev])
class DataRepositoryProd implements DataRepository {
  @override
  String get data => "Lingkungan Development";
}
