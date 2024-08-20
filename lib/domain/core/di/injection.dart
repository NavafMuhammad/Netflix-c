import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
    // initializerName: 'init',
    preferRelativeImports: true,
    asExtension: true)
Future<void> configureInjection() async {
  getIt.init();
}
