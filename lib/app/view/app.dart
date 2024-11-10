import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imgur_repository/imgur_repository.dart';
import 'package:imgur_service/imgur_service.dart';
import 'package:local_storage_service/local_storage_service.dart';
import 'package:spartapp/home/home.dart';
import 'package:spartapp/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => LocalStorageService()..setUpHive(),
        ),
        RepositoryProvider(
          create: (context) => const ImgurService(),
        ),
        RepositoryProvider(
          create: (context) => ImgurRepository(
            imgurService: context.read<ImgurService>(),
          ),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: HomePage(),
      ),
    );
  }
}
