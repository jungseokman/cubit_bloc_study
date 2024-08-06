import 'package:cubit_bloc_study/blocToBloc.dart';
import 'package:cubit_bloc_study/blocs/bloc/counter_bloc.dart';
import 'package:cubit_bloc_study/blocs/color/bloc/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(
          create: (context) => ColorBloc(),
        ),
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        ),
      ],
      child: const MaterialApp(
        title: 'Bloc',
        debugShowCheckedModeBanner: false,
        // theme: context.watch<ThemeBloc>().state.appTheme == AppTheme.light
        //     ? ThemeData.light()
        //     : ThemeData.dark(),
        home: BlocToBloc(),
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ThemeBloc>(
//       create: (context) => ThemeBloc(),
//       child: Builder(builder: (context) {
//         return MaterialApp(
//           title: 'Bloc',
//           debugShowCheckedModeBanner: false,
//           theme: context.watch<ThemeBloc>().state.appTheme == AppTheme.light
//               ? ThemeData.light()
//               : ThemeData.dark(),
//           home: const Payload(),
//         );
//       }),
//     );
//   }
// }
