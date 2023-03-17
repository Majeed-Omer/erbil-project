import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/erbil/domain/entities/food.dart';
import '../../../../../core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/strings/failures.dart';
import '../../../domain/usecases/get_all_foods.dart';


part 'foods_event.dart';
part 'foods_state.dart';

class FoodsBloc extends Bloc<FoodsEvent, FoodsState> {
  final GetAllFoodsUsecase getAllFoods;
  FoodsBloc({
    required this.getAllFoods,
  }) : super(FoodsInitial()) {
    on<FoodsEvent>((event, emit) async {
      if (event is GetAllFoodsEvent) {
        emit(LoadingFoodsState());

        final failureOrPosts = await getAllFoods();
        emit(_mapFailureOrPostsToState(failureOrPosts));
      } 
    });
  }

  FoodsState _mapFailureOrPostsToState(Either<Failure, List<Food>> either) {
    return either.fold(
      (failure) => ErrorFoodsState(message: _mapFailureToMessage(failure)),
      (foods) => LoadedFoodsState(
        foods: foods,
      ),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      default:
        return "Unexpected Error , Please try again later .";
    }
  }
}
