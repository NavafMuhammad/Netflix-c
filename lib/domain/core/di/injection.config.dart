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
import '../../../application/fastLaugh/fast_laugh_bloc.dart' as _i539;
import '../../../application/home/home_bloc.dart' as _i485;
import '../../../application/new_and_hot/new_and_hot_bloc.dart' as _i799;
import '../../../application/search/search_bloc.dart' as _i823;
import '../../../infrastructure/downloads/downloads_impl.dart' as _i122;
import '../../../infrastructure/home/home_impl.dart' as _i135;
import '../../../infrastructure/new_and_hot/new_and_hot_impl.dart' as _i895;
import '../../../infrastructure/search/search_impl.dart' as _i948;
import '../../downloads/downloads_service.dart' as _i891;
import '../../home/home_service.dart' as _i545;
import '../../new_and_hot/new_and_hot_service.dart' as _i655;
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
    gh.lazySingleton<_i655.NewAndHotService>(() => _i895.NewAndHotImpl());
    gh.lazySingleton<_i545.HomeService>(() => _i135.HomeImpl());
    gh.lazySingleton<_i393.SearchService>(() => _i948.SearchImpl());
    gh.lazySingleton<_i891.DownloadsService>(() => _i122.DownloadsImpl());
    gh.factory<_i539.FastLaughBloc>(
        () => _i539.FastLaughBloc(gh<_i891.DownloadsService>()));
    gh.factory<_i799.NewAndHotBloc>(
        () => _i799.NewAndHotBloc(gh<_i655.NewAndHotService>()));
    gh.factory<_i823.SearchBloc>(() => _i823.SearchBloc(
          gh<_i891.DownloadsService>(),
          gh<_i393.SearchService>(),
        ));
    gh.factory<_i747.DownloadsBloc>(
        () => _i747.DownloadsBloc(gh<_i891.DownloadsService>()));
    gh.factory<_i485.HomeBloc>(() => _i485.HomeBloc(
          gh<_i891.DownloadsService>(),
          gh<_i655.NewAndHotService>(),
          gh<_i545.HomeService>(),
        ));
    return this;
  }
}
