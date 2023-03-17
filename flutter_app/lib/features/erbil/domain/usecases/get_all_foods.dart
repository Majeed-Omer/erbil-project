import '../repositories/foods_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/food.dart';

class GetAllFoodsUsecase {
  final FoodsRepository repository;

  GetAllFoodsUsecase(this.repository);

  Future<Either<Failure, List<Food>>> call() async {
    return await repository.getAllFoods();
  }
}
