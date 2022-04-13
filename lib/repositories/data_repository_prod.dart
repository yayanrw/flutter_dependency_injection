import 'package:dependency_injection/configs/env.dart';
import 'package:dependency_injection/repositories/data_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(env: [Env.prod], as: DataRepository)
class DataRepositoryProd implements DataRepository {
  @override
  String get data => "Lingkungan Produksi";
}
