import 'package:assessment/businessLogic/home_screen_cubit/home_screen_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
          if (state.pokeMonFavList.isEmpty) {
            return const Center(
              child: Text("No favorite PokeMon available!"),
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.pokeMonFavList[index].name),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  trailing: IconButton(
                    onPressed: () {
                      context
                          .read<HomeScreenCubit>()
                          .onUpdateLikedPokeMon(state.pokeMonFavList[index]);
                    },
                    icon: const Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.red,
                    ),
                  ),
                );
              },
              physics: const BouncingScrollPhysics(),
              itemCount: state.pokeMonFavList.length,
            );
          }
        },
      ),
    );
  }
}
