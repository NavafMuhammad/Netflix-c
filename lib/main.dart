import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/bloc/downloads_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/domain/core/di/injection.dart';
import 'package:netflix/presentation/root/screen_root.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Netflix Clone',
        // darkTheme: ThemeData.dark(),
        // themeMode: ThemeMode.system,
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
          scaffoldBackgroundColor: kScaffoldBackgroundColor,
        ),
        home: ScreenRoot(),
      ),
    );
  }
}
