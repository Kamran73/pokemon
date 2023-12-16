import 'dart:convert';

import 'package:assessment/base/view_state.dart';
import 'package:assessment/dataProvider/models/results_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../helper/constant/common_keys.dart';
import '../../main.dart';
import '../../repository/repository.dart';

part 'home_screen_cubit.freezed.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  Repository repository;

  HomeScreenCubit({required this.repository})
      : super(HomeScreenState.mainState(
            pokeMonVS: ViewState.initial(), pokeMonFavList: []));

  Future<void> getPokeMon() async {
    emit(state.copyWith(pokeMonVS: ViewState.loading()));
    await repository.getPokeMon().then((response) async {
      await response.fold(
          (failure) async => {
                emit(state.copyWith(
                    pokeMonVS: ViewState.error(failure: failure))),
              },
          (success) async => {
                emit(state.copyWith(
                  pokeMonVS: ViewState.completed(data: success.results),
                )),
              });
    });
  }

  Future<void> getFavoritePokeMon() async {
    emit(state.copyWith(pokeMonFavList: _getCachedPokMon()));
  }

  List<ResultsModel> _getCachedPokMon() {
    List<ResultsModel> moviesList = [];
    final moviesJson =
        getIt<SharedPreferences>().getString(CommonKeys.FAV_POKEMON_CACHE_KEY);
    if (moviesJson != null) {
      for (var element in jsonDecode(moviesJson)) {
        moviesList.add(ResultsModel.fromJson(element));
      }
    }
    return moviesList;
  }

  Future<void> onUpdateLikedPokeMon(ResultsModel pokeMon) async {
    List<ResultsModel> pokeMonList = [...state.pokeMonFavList];
    if (pokeMonList.contains(pokeMon)) {
      pokeMonList.removeWhere((element) => element.name == pokeMon.name);
    } else {
      pokeMonList.add(pokeMon);
    }
    emit(state.copyWith(pokeMonFavList: pokeMonList));
    List<Map<String, dynamic>> mapList = [];
    for (var element in pokeMonList) {
      mapList.add(element.toJson());
    }
    await getIt<SharedPreferences>()
        .setString(CommonKeys.FAV_POKEMON_CACHE_KEY, jsonEncode(mapList));
  }
}
