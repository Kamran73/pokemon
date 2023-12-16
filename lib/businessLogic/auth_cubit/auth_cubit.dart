import 'package:assessment/base/view_state.dart';
import 'package:assessment/dataProvider/models/auth_model.dart';
import 'package:assessment/helper/constant/common_keys.dart';
import 'package:assessment/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../repository/repository.dart';

part 'auth_cubit.freezed.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final Repository repository;

  AuthCubit({required this.repository})
      : super(AuthState.mainState(
          loginVS: ViewState.initial(),
          signupVS: ViewState.initial(),
          signOutVs: ViewState.initial(),
        ));

  Future<void> login({required AuthModel signInModel}) async {
    emit(state.copyWith(loginVS: ViewState.loading()));
    await repository.signIn(signInModel).then((response) async {
      await response.fold(
          (failure) async => {
                emit(
                    state.copyWith(loginVS: ViewState.error(failure: failure))),
                emit(state.copyWith(loginVS: ViewState.initial()))
              },
          (success) async => {
                emit(state.copyWith(loginVS: ViewState.completed(data: null))),
                getIt<SharedPreferences>()
                    .setBool(CommonKeys.IS_LOGGED_IN, true),
              });
    });
  }

  Future<void> signOut() async {
    emit(state.copyWith(signupVS: ViewState.loading()));
    await repository.signOut().then((response) async {
      await response.fold(
          (failure) async => {
                emit(state.copyWith(
                    signOutVs: ViewState.error(failure: failure))),
                emit(state.copyWith(signupVS: ViewState.initial()))
              },
          (success) async => {
                emit(
                    state.copyWith(signOutVs: ViewState.completed(data: null))),
                getIt<SharedPreferences>()
                    .setBool(CommonKeys.IS_LOGGED_IN, false),
              });
    });
  }

  Future<void> signUp({required AuthModel signUpModel}) async {
    emit(state.copyWith(signupVS: ViewState.loading()));
    await repository.signUp(signUpModel).then((response) async {
      await response.fold(
          (failure) async => {
                emit(state.copyWith(
                    signupVS: ViewState.error(failure: failure))),
                emit(state.copyWith(signupVS: ViewState.initial()))
              },
          (success) async => {
                emit(state.copyWith(signupVS: ViewState.completed(data: null))),
                getIt<SharedPreferences>()
                    .setBool(CommonKeys.IS_LOGGED_IN, true),
              });
    });
  }
}
