import 'package:flcp_s2/app/blocs/theme/theme_cubit.dart';
import 'package:flcp_s2/l10n/l10n.dart';
import 'package:flcp_s2/app/blocs/locale/locale_cubit.dart';
import 'package:flcp_s2/pages/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocaleCubit(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: const _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, Locale>(
      builder: (context, locale) {
        return BlocBuilder<ThemeCubit, Brightness>(
          builder: (context, brightness) {
            return MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: locale,
              theme: ThemeData(
                brightness: brightness,
              ),
              home: const CounterPage(),
            );
          },
        );
      },
    );
  }
}
