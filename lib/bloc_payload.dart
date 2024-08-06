import 'dart:math';

import 'package:cubit_bloc_study/blocs/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Payload extends StatelessWidget {
  const Payload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final int randInt = Random().nextInt(10);
            print('randInt: $randInt');

            context.read<ThemeBloc>().add(ChangeThemeEvent(randInt: randInt));
          },
          child: const Text(
            'change theme',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
