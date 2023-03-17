import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/food.dart';
import '../../domain/repositories/foods_repository.dart';
import '../datasources/food_remote_data_source.dart';


class FoodsRepositoryImpl implements FoodsRepository {
  final FoodRemoteDataSource remoteDataSource;
  // final PostLocalDataSource localDataSource;
  // final NetworkInfo networkInfo;

  FoodsRepositoryImpl(
      {required this.remoteDataSource,
      // required this.localDataSource,
      // required this.networkInfo
      });
  @override
  Future<Either<Failure, List<Food>>> getAllFoods() async {
    //if (await networkInfo.isConnected) {
      try {
        final remoteFoods = await remoteDataSource.getAllFoods();
        //localDataSource.cachePosts(remotePosts);
        return Right(remoteFoods);
      } on ServerException {
        return Left(ServerFailure());
      }
    } 
    // else {
    //   try {
    //     final localPosts = await localDataSource.getCachedPosts();
    //     return Right(localPosts);
    //   } on EmptyCacheException {
    //     return Left(EmptyCacheFailure());
    //   }
    // }
  }

