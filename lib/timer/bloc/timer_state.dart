part of 'timer_bloc.dart';

abstract class TimerState {
  const TimerState(this.duration);

  final int duration;

  @override
  List<Object> get props => [duration];
}

class TimerInitial extends TimerState {
  TimerInitial(int duration) : super(duration);

  @override
  String toString() => "Timer initial: $duration";
}

class TimerRunPause extends TimerState {
  TimerRunPause(int duration) : super(duration);

  @override
  String toString() => "Timer run pause: $duration";
}

class TimerRunInProgress extends TimerState {
  TimerRunInProgress(int duration) : super(duration);

  @override
  String toString() => "Timer run in progress: $duration";
}

class TimerRunComplete extends TimerState {
  TimerRunComplete() : super(0);
}
