
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_input_project/src/services/model/model.dart';

import 'input_state.dart';
import 'inputreposatory.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial()){
    getData();
  }
  Repository repository=Repository();
  Future getData()async{
    emit(UserLoading());
    try{
      final response=await repository.fetchData();
      print(response);
       int userId=response.userId  ;
      // print(userId);
      int id=response.id;
      String title=response.title;
      emit(UserLoaded(userId,id,title));
    }catch(ex){Exception(ex);}
  }
}
