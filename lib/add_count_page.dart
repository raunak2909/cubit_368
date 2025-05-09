import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

class AddCountPage extends StatelessWidget {
  const AddCountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Count"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){
              context.read<CounterCubit>().decrementCount();
            }, icon: Icon(Icons.remove)),
            IconButton(onPressed: (){
              context.read<CounterCubit>().incrementCount();
            }, icon: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
