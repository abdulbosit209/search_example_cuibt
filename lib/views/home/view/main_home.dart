import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_items/views/home/cubit/main_cubit.dart';
import 'package:product_items/views/home/state/main_state.dart';
import 'package:product_items/views/reactagle.dart';

import 'home/view/home_view.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainCubit, MainState>(builder: (contextCubit, state){
        if(state is EcoState){
          return const MyRectangle();
        }
        else if(state is HomeState){
          return const HomeView();
        }
        else if(state is SettingsState){
          return const Center(child: Text("Settings Page"),);
        }
        else {
          return const Center(child: Text("ProfilePage Page"),);
        }
      },),

      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(indicatorColor: CupertinoColors.systemGreen),
        child: NavigationBar(
          backgroundColor: CupertinoColors.quaternarySystemFill,
          elevation: 0,
          animationDuration: const Duration(seconds: 1),
          selectedIndex: context.watch<MainCubit>().currentPage,
          onDestinationSelected: (v) {
            context.read<MainCubit>().changeState(v);
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.eco_outlined),
              label: 'eco',
              selectedIcon: Icon(Icons.eco),
            ),
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'home',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              label: 'settings',
              selectedIcon: Icon(Icons.settings),
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              label: 'profile',
              selectedIcon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
