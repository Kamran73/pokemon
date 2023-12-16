import 'package:assessment/businessLogic/auth_cubit/auth_cubit.dart';
import 'package:assessment/businessLogic/home_screen_cubit/home_screen_cubit.dart';
import 'package:assessment/helper/constant/common_keys.dart';
import 'package:assessment/presentation/screens/auth/login_screen.dart';
import 'package:assessment/presentation/screens/home_screen/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';
import 'helper/utils/dependency_utils.dart';

GetIt getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await DependencyUtils.registerAppDependencies();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool isLoggedIn;

  @override
  void initState() {
    if (getIt<SharedPreferences>().containsKey(CommonKeys.IS_LOGGED_IN)) {
      isLoggedIn =
          getIt<SharedPreferences>().getBool(CommonKeys.IS_LOGGED_IN) ?? false;
    } else {
      isLoggedIn = false;
    }
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => getIt<AuthCubit>(),
        ),
        BlocProvider<HomeScreenCubit>(
          create: (context) => getIt<HomeScreenCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Assessment',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          useMaterial3: true,
        ),
        home: isLoggedIn == false ? const LoginScreen() : const HomeScreen(),
      ),
    );
  }
}
