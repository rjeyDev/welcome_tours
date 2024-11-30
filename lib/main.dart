import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:welcome_tours/application/data/local/service_locator.dart';

import 'application/domain/repositories/tour_repository.dart';
import 'application/presentation/bloc/tour_bloc.dart';
import 'application/presentation/screens/tours/tours_home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Background color of status bar
      statusBarIconBrightness: Brightness.light, // Change icons to light (white)
      statusBarBrightness: Brightness.dark, // For iOS: dark (light items)
    ),
  );
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Tour',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: BlocProvider(
        create: (context) => TourBloc(serviceLocator.get<TourRepository>()),
        child: const ToursHomeScreen(),
      ),
    );
  }
}
