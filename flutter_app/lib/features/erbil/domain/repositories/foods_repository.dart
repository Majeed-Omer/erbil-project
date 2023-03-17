import '../entities/food.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

abstract class FoodsRepository {
  Future<Either<Failure, List<Food>>> getAllFoods();
}
