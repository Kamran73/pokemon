import 'package:assessment/businessLogic/auth_cubit/auth_cubit.dart';
import 'package:assessment/businessLogic/home_screen_cubit/home_screen_cubit.dart';
import 'package:assessment/dataProvider/network/network_interceptor.dart';
import 'package:assessment/repository/repository.dart';
import 'package:assessment/repository/repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../base/failure.dart';
import '../../dataProvider/network/network_api_client.dart';
import '../../main.dart';
import '../constant/constants_resource.dart';
import '../constant/strings_resource.dart';

class DependencyUtils {
  DependencyUtils._();

  static Future<void> registerAppDependencies() async {
    /// initializing third party packages instance
    final dio = Dio(
      BaseOptions(
          contentType: "application/json",
          headers: {"Accept": "application/json"},
          baseUrl: ConstantsResource.POKEMON_BASE_URL),
    )..interceptors.add(NetworkInterceptor());
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final firebaseAuth = FirebaseAuth.instance;

    /// registering common instances
    getIt.registerLazySingleton<Failure>(() => const Failure(
        errorMessage: StringsResource.SOMETHING_WRONG_STR,
        errorCode: StringsResource.ERROR_STR));

    /// registering third party instances
    getIt.registerLazySingleton<Dio>(() => dio);
    getIt.registerLazySingleton<SharedPreferences>(() => prefs);
    getIt.registerLazySingleton<FirebaseAuth>(() => firebaseAuth);

    /// registering api clients
    getIt.registerSingleton(NetworkApiClient(getIt()));

    /// registering remote data manager repository
    getIt.registerSingleton<Repository>(
        RepositoryImpl(networkApiClient: getIt(), firebaseAuth: getIt()));

    /// registering bloc
    getIt.registerFactory(() => AuthCubit(repository: getIt()));
    getIt.registerFactory(() => HomeScreenCubit(repository: getIt()));
  }
}
