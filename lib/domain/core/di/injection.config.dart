// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../../application/downloads/downloads_bloc.dart' as _i747;
import '../../../application/search/search_bloc.dart' as _i823;
import '../../../infrastructure/downloads/downloads_impl.dart' as _i122;
import '../../../infrastructure/search/search_impl.dart' as _i948;
import '../../downloads/downloads_service.dart' as _i891;
import '../../search/search_service.dart' as _i393;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i393.SearchService>(() => _i948.SearchImpl());
    gh.lazySingleton<_i891.DownloadsService>(() => _i122.DownloadsImpl());
    gh.factory<_i747.DownloadsBloc>(
        () => _i747.DownloadsBloc(gh<_i891.DownloadsService>()));
    gh.factory<_i823.SearchBloc>(() => _i823.SearchBloc(
          gh<_i891.DownloadsService>(),
          gh<_i393.SearchService>(),
        ));
    return this;
  }
}
