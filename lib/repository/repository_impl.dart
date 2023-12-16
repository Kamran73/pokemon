import 'package:assessment/base/failure.dart';
import 'package:assessment/dataProvider/models/auth_model.dart';
import 'package:assessment/dataProvider/models/main_response_model.dart';
import 'package:assessment/helper/constant/strings_resource.dart';
import 'package:assessment/helper/extensions/dio_extension.dart';
import 'package:assessment/repository/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../dataProvider/network/network_api_client.dart';

class RepositoryImpl implements Repository {
  final FirebaseAuth firebaseAuth;
  NetworkApiClient networkApiClient;

  RepositoryImpl({required this.networkApiClient, required this.firebaseAuth});

  @override
  Future<Either<Failure, void>> signIn(AuthModel signInModel) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: signInModel.email, password: signInModel.password);
    } on FirebaseAuthException catch (firebaseError) {
      return left(
        Failure(
            errorMessage: firebaseError.toString().split(']')[1],
            errorCode: StringsResource.ERROR_STR),
      );
    }
    return const Right<Failure, void>(null);
  }

  @override
  Future<Either<Failure, void>> signUp(AuthModel authModel) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: authModel.email, password: authModel.password);
    } on FirebaseAuthException catch (firebaseError) {
      return left(Failure(
          errorMessage: firebaseError.toString().split(']')[1],
          errorCode: StringsResource.ERROR_STR));
    }
    return const Right<Failure, void>(null);
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      await firebaseAuth.signOut();
    } on FirebaseAuthException catch (firebaseError) {
      return left(Failure(
          errorMessage: firebaseError.toString().split(']')[1],
          errorCode: StringsResource.ERROR_STR));
    }
    return const Right<Failure, void>(null);
  }

  @override
  Future<Either<Failure, MainResponse>> getPokeMon() async {
    try {
      return await networkApiClient.getPokeMon().then((mainResponse) {
        return right(mainResponse);
      });
    } on DioException catch (dioException) {
      return left(_handleException(dioException));
    }
  }

  Failure _handleException(DioException e) {
    final dioErrorResponse = e.response;
    if (e.isInternetConnectionError) {
      return const Failure(
          errorMessage: StringsResource.NO_INTERNET_ERROR_STR,
          errorCode: StringsResource.INTERNET_STR);
    } else if (dioErrorResponse?.data != null) {
      return Failure(
        errorMessage: dioErrorResponse?.statusMessage ??
            StringsResource.SOMETHING_WRONG_STR,
        errorCode: dioErrorResponse?.statusCode.toString() ??
            StringsResource.ERROR_STR,
      );
    } else {
      return Failure(
        errorMessage: dioErrorResponse?.statusMessage ??
            StringsResource.SOMETHING_WRONG_STR,
        errorCode: dioErrorResponse?.statusCode.toString() ??
            StringsResource.ERROR_STR,
      );
    }
  }
}
