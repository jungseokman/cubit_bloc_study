import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void changeCounter(int incrementSize) {
    emit(state.copyWith(counter: state.counter + incrementSize));
  }
}


// class CounterCubit extends Cubit<CounterState> {
//   int incrementSize = 1;
//   final ColorCubit colorCubit;
//   late final StreamSubscription colorSubscription;

//   CounterCubit({required this.colorCubit}) : super(CounterState.initial()) {
//     colorSubscription = colorCubit.stream.listen((ColorState colorState) {
//       if (colorState.color == Colors.red) {
//         incrementSize = 1;
//       } else if (colorState.color == Colors.green) {
//         incrementSize = 10;
//       } else if (colorState.color == Colors.blue) {
//         incrementSize = 100;
//       } else if (colorState.color == Colors.amber) {
//         emit(state.copyWith(counter: state.counter - 100));
//         incrementSize = -100;
//       }
//     });
//   }

//   void changeCounter() {
//     emit(state.copyWith(counter: state.counter + incrementSize));
//   }

//   @override
//   Future<void> close() {
//     colorSubscription.cancel();
//     return super.close();
//   }
// }
