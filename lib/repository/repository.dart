import 'package:assessment/dataProvider/models/auth_model.dart';
import 'package:assessment/dataProvider/models/main_response_model.dart';
import 'package:dartz/dartz.dart';

import '../base/failure.dart';

abstract class Repository {
  Future<Either<Failure, void>> signIn(AuthModel signInModel);

  Future<Either<Failure, void>> signUp(AuthModel authModel);

  Future<Either<Failure, void>> signOut();

  Future<Either<Failure, MainResponse>> getPokeMon();
}
