import 'package:first_app/bloc-app/counter_events.dart';
import 'package:bloc/bloc.dart';
import 'dart:async';


class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;


  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        yield currentState -1;
        break;
      case CounterEvent.increment:
        yield currentState +1;
        break;
    }
  }
}
