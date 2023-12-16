import 'package:assessment/base/failure.dart';
import 'package:assessment/businessLogic/home_screen_cubit/home_screen_cubit.dart';
import 'package:assessment/helper/utils/dialog_utils.dart';
import 'package:assessment/presentation/screens/auth/login_screen.dart';
import 'package:assessment/presentation/widgets/error_state_widget.dart';
import 'package:assessment/presentation/widgets/loading_state_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../businessLogic/auth_cubit/auth_cubit.dart';
import '../../../helper/enums/status_enum.dart';
import '../../../main.dart';
import '../favorite_screen/favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeScreenCubit>().getFavoritePokeMon();
    _getPokeMon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            onPressed: () async {
              context.read<AuthCubit>().signOut();
            },
            icon: Transform.rotate(
              angle: 3.14,
              child: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FavoriteScreen(),
                    )),
                icon: const Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.red,
                ))
          ],
        ),
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, authState) {
            authState.signOutVs.status == Status.error
                ? DialogUtils.errorDialog(
                    context: context,
                    failure: authState.signOutVs.failure ?? getIt<Failure>())
                : authState.signOutVs.status == Status.completed
                    ? Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                        (route) => false)
                    : null;
          },
          builder: (context, authState) {
            return BlocConsumer<HomeScreenCubit, HomeScreenState>(
              listener: (context, state) {
                state.pokeMonVS.status == Status.error
                    ? DialogUtils.errorDialog(
                        context: context,
                        failure: state.pokeMonVS.failure ?? getIt<Failure>())
                    : null;
              },
              builder: (context, state) {
                if (state.pokeMonVS.status == Status.error) {
                  return ErrorStateWidget(
                    onPressed: _getPokeMon,
                  );
                } else if (state.pokeMonVS.status == Status.loading) {
                  return const LoadingStateWidget();
                } else {
                  return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state.pokeMonVS.data?[index].name ?? ""),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        trailing: IconButton(
                          onPressed: () {
                            context
                                .read<HomeScreenCubit>()
                                .onUpdateLikedPokeMon(
                                    state.pokeMonVS.data![index]);
                          },
                          icon: Icon(
                            state.pokeMonFavList
                                    .contains(state.pokeMonVS.data?[index])
                                ? CupertinoIcons.heart_fill
                                : CupertinoIcons.heart,
                            color: state.pokeMonFavList
                                    .contains(state.pokeMonVS.data?[index])
                                ? Colors.red
                                : null,
                          ),
                        ),
                      );
                    },
                    itemCount: state.pokeMonVS.data?.length ?? 0,
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }

  void _getPokeMon() {
    context.read<HomeScreenCubit>().getPokeMon();
  }
}
