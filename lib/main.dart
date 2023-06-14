import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel_app/cubit/app_cubits.dart';
import 'package:flutter_travel_app/cubit/app_cubit_logics.dart';
import 'package:flutter_travel_app/services/data_services.dart';

void main() {
  runApp(MaterialApp(
    title: 'Travel App',
    debugShowCheckedModeBanner: false,
    home: BlocProvider<AppCubits>(
      create: (context) => AppCubits(
        data: DataServices(),
      ),
      child: AppCubitLogics(),
    ),
  ));
}
