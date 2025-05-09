import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{

  ///initial state
  CounterCubit() : super(100);

  ///events
  void incrementCount(){
    emit(state+1);
  }

  void decrementCount(){
    if(state>0){
      emit(state-1);
    }
  }

}