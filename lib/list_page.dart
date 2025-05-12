import 'package:cubit_368/list_cubit.dart';
import 'package:cubit_368/list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: BlocBuilder<ListCubit, ListState>(
          builder: (_, state){
        return state.mData.isNotEmpty ? ListView.builder(
            itemCount: state.mData.length,
            itemBuilder: (_, index){
          return ListTile(
            title: Text(state.mData[index]["title"]),
            subtitle: Text(state.mData[index]["msg"]),
            trailing: SizedBox(
              width: 110,
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    context.read<ListCubit>().updateData({
                      "title" : "New Task",
                      "msg" : "Please complete DB with Cubit"
                    }, index);
                  }, icon: Icon(Icons.edit)),
                  IconButton(onPressed: (){
                    context.read<ListCubit>().deleteData(index);
                  }, icon: Icon(Icons.delete, color: Colors.red,)),
                ],
              ),
            ),
          );
        }) : Center(
          child: Text('No Items yet!!'),
        );
      }),

      floatingActionButton: FloatingActionButton(onPressed: (){
        context.read<ListCubit>().addData({
          "title" : "New Item",
          "msg" : "List Map with Cubit done!!"
        });
      }, child: Icon(Icons.add),),
    );
  }
}
