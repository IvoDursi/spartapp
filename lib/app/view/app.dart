import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:images_repository/images_repository.dart';

import 'package:local_storage_service/local_storage_service.dart';
import 'package:spart_app/home/home.dart';
import 'package:spart_app/l10n/l10n.dart';
import 'package:unsplash_service/unsplash_service.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.localStorageService,
  });

  final LocalStorageService localStorageService;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => localStorageService,
        ),
        RepositoryProvider(
          create: (context) => const UnsplashService(),
        ),
        RepositoryProvider(
          create: (context) => ImagesRepository(
            unsplashService: context.read<UnsplashService>(),
            localStorageService: localStorageService,
          ),
        ),
        BlocProvider(
          create: (context) => PopularImagesBloc(
            imagesRepository: context.read<ImagesRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => FavouriteImagesBloc(
            imagesRepository: context.read<ImagesRepository>(),
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
