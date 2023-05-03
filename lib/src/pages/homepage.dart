import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/input_cubit.dart';
import '../cubit/input_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
final _cubit =UserCubit();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserCubit, UserState>(
        bloc: _cubit,
        builder: (context, state) {
          if(state is UserLoading){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }else if (state is UserLoaded){
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text(state.id.toString() ),
                  Text(state.userId.toString()),
                  Text(state.tittle)]
            );
          }else if(state is UserError){
            return Center(child: Icon(Icons.error),);
          }else{
            return Container();
          }

        },
      ),
    );
  }
}
