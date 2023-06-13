import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:global_configuration/global_configuration.dart';

import 'core/router/app_router.dart';
import 'features/presentation/blocs/bloc/media_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
  await GlobalConfiguration().loadFromAsset('app_settings');
  runApp(const SpaceMediaApp());
}

class SpaceMediaApp extends StatefulWidget {
  const SpaceMediaApp({super.key});

  @override
  State<SpaceMediaApp> createState() => _SpaceMediaAppState();
}

class _SpaceMediaAppState extends State<SpaceMediaApp> {



  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();

    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => MediaBloc()),
        ],
        child: MaterialApp(
                    localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: _appRouter.initialRoute,
      onGenerateInitialRoutes: _appRouter.onGenerateInitialRoutes,
      onGenerateRoute: _appRouter.onGenerateRoute,),
    );
  }
}
