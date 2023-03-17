
part of 'foods_bloc.dart';

abstract class FoodsState extends Equatable {
  const FoodsState();

  @override
  List<Object> get props => [];
}

class FoodsInitial extends FoodsState {}

class LoadingFoodsState extends FoodsState {}

class LoadedFoodsState extends FoodsState {
  final List<Food> foods;

  LoadedFoodsState({required this.foods});

  @override
  List<Object> get props => [foods];
}

class ErrorFoodsState extends FoodsState {
  final String message;

  ErrorFoodsState({required this.message});

  @override
  List<Object> get props => [message];
}
