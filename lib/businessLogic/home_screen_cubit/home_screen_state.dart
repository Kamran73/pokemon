part of 'home_screen_cubit.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.mainState(
      {required ViewState<List<ResultsModel>> pokeMonVS,
      required List<ResultsModel> pokeMonFavList}) = _MainState;
}
