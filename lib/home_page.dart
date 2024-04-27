import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/bloc/counter_bloc.dart';
import 'package:flutter_bloc_app/cubit/inc_dec_counter.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, int>(
                // bloc: counterCubit,
                builder: (context, counter) {
              return Text(
                '$counter',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const IncDecPage()));
        },
        tooltip: 'Harshad',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
