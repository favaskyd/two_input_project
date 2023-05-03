import 'package:equatable/equatable.dart';
import 'package:two_input_project/src/services/model/model.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class  UserInitial extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoading extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoaded extends UserState {
  final userId;
  final id;
  final tittle;
  UserLoaded(this.userId,this.id,this.tittle);
  @override
  List<Object> get props => [userId,id,tittle];
}

class UserError extends UserState {
  @override
  List<Object> get props => [];
}
