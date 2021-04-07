import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'screen_event.dart';
part 'screen_state.dart';

class ScreenBloc extends Bloc<ScreenEvent, ScreenState> {
  ScreenBloc() : super(ScreenInitial());

  @override
  Stream<ScreenState> mapEventToState(
    ScreenEvent event,
  ) async* {
    if (event is GoToSplashScreen) {
      yield OnSplashScreen();
    } else if (event is GoToHomeScreen) {
      yield OnHomeScreen();
    }
  }
}
