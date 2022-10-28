import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_items/views/home/cubit/main_cubit.dart';
import 'package:product_items/views/home/view/main_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: CupertinoColors.quaternarySystemFill,
          brightness: Brightness.light,
        ),
      ),
      home: BlocProvider(
        create: (context) => MainCubit(),
        child: const MainHome(),
      ),
    );
  }
}
