import 'package:dependency_injection/configs/env.dart';

class DataRepository {
  final String env = Env.prod;

  String get data {
    if (env == Env.prod) {
      return "Lingkungan Produksi";
    }
    return "Lingkungan Development";
  }
}
