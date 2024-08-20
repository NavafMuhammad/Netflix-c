// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../../application/bloc/downloads_bloc.dart' as _i743;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i1047;
import '../../downloads/i_downloads_repo.dart' as _i107;

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
    gh.lazySingleton<_i107.IDownloadsRepo>(() => _i1047.DownloadsRepository());
    gh.factory<_i743.DownloadsBloc>(
        () => _i743.DownloadsBloc(gh<_i107.IDownloadsRepo>()));
    return this;
  }
}
