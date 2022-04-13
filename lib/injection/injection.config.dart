// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../providers/data_provider.dart' as _i6;
import '../repositories/data_repository.dart' as _i3;
import '../repositories/data_repository_dev.dart' as _i5;
import '../repositories/data_repository_prod.dart' as _i4;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DataRepository>(() => _i4.DataRepositoryProd(),
      registerFor: {_prod});
  gh.lazySingleton<_i3.DataRepository>(() => _i5.DataRepositoryDev(),
      registerFor: {_dev});
  gh.factory<_i6.DataProvider>(
      () => _i6.DataProvider(get<_i3.DataRepository>()));
  return get;
}
