part of 'screen_bloc.dart';

@immutable
abstract class ScreenEvent {}

class GoToSplashScreen extends ScreenEvent {}

class GoToBoardingScreen extends ScreenEvent {}

class GoToHomeScreen extends ScreenEvent {}