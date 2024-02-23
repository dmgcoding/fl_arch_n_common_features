import 'package:flcp_s2/app/blocs/theme/theme_cubit.dart';
import 'package:flcp_s2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeModeChangePage extends StatelessWidget {
  const ThemeModeChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ThemeModeChangeView();
  }
}

class _ThemeModeChangeView extends StatelessWidget {
  const _ThemeModeChangeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.of(context).primaryBg,
      appBar: AppBar(
        title: const Text('Change Theme'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ListView(
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => context.read<ThemeCubit>().changeToLightMode(),
                  child: Container(
                    width: 180,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: const Center(
                      child: Text(
                        'Light Mode',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: () => context.read<ThemeCubit>().changeToDarkMode(),
                  child: Container(
                    width: 180,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: const Center(
                      child: Text(
                        'Dark Mode',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
