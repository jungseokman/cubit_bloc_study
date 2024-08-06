import 'package:cubit_bloc_study/blocs/bloc/counter_bloc.dart';
import 'package:cubit_bloc_study/other/other_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CounterBloc, CounterState>(
        listener: (context, state) {
          if (state.counter == 3) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text((state.counter).toString()),
                  );
                });
          } else if (state.counter == -1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const OtherPage();
            }));
          }
        },
        child: Center(
          child: Text(
            '${context.watch<CounterBloc>().state.counter}',
            style: const TextStyle(fontSize: 52.0),
          ),
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'asd',
            child: const Icon(
              Icons.add,
            ),
            onPressed: () {
              BlocProvider.of<CounterBloc>(context)
                  .add(IncremrntCounterHandler());
            },
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'asd22',
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounterHandler());
            },
          ),
        ],
      ),
    );
  }
}
