import 'package:dependency_injection/repositories/data_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DataProvider {
  final DataRepository _dataRepository;

  DataProvider(this._dataRepository);

  String get dataText => "Data dari repository: ${_dataRepository.data}";
}
