// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'color_bloc.dart';

class ColorState extends Equatable {
  final Color color;
  const ColorState(
    this.color,
  );

  factory ColorState.initial() {
    return const ColorState(Colors.red);
  }

  @override
  List<Object> get props => [color];

  ColorState copyWith({
    Color? color,
  }) {
    return ColorState(
      color ?? this.color,
    );
  }

  @override
  bool get stringify => true;
}
