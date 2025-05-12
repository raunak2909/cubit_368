import 'package:cubit_368/list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCubit extends Cubit<ListState>{

  ListCubit() : super(ListState(mData: []));

  ///events
  void addData(Map<String, dynamic> data){

    List<Map<String, dynamic>> currentStateData = state.mData;
    currentStateData.add(data);
    emit(ListState(mData: currentStateData));

  }

  void updateData (Map<String, dynamic> updateData, int index){
    List<Map<String, dynamic>> currentStateData = state.mData;
    currentStateData[index] = updateData;
    emit(ListState(mData: currentStateData));
  }

  void deleteData(int index){
    List<Map<String, dynamic>> currentStateData = state.mData;
    currentStateData.removeAt(index);

    emit(ListState(mData: currentStateData));
  }

}