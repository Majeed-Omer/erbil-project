import 'features/erbil/data/datasources/food_remote_data_source.dart';
import 'features/erbil/data/repositories/food_repository_impl.dart';
import 'features/erbil/domain/repositories/foods_repository.dart';
import 'features/erbil/domain/usecases/get_all_foods.dart';
import 'features/erbil/presentation/bloc/foods/foods_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
//! Features - posts

// Bloc

  sl.registerFactory(() => FoodsBloc(getAllFoods: sl()));

// Usecases

  sl.registerLazySingleton(() => GetAllFoodsUsecase(sl()));

// Repository

  sl.registerLazySingleton<FoodsRepository>(
      () => FoodsRepositoryImpl(remoteDataSource: sl()));

// Datasources

  sl.registerLazySingleton<FoodRemoteDataSource>(
      () => FoodRemoteDataSourceImpl(client: sl()));

//! External

  sl.registerLazySingleton(() => http.Client());
}
