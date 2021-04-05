part of 'screen_bloc.dart';

@immutable
abstract class ScreenState {}

class ScreenInitial extends ScreenState {}

class OnSplashScreen extends ScreenState {}

class OnSBoardingScreen extends ScreenState {}

class OnHomeScreen extends ScreenState {}
