part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.mainState({
    required ViewState<void> loginVS,
    required ViewState<void> signupVS,
    required ViewState<void> signOutVs,
  }) = _MainState;
}
