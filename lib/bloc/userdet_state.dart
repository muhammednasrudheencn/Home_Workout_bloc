part of 'userdet_bloc.dart';

@immutable
abstract class UserdetState {}

class UserdetInitial extends UserdetState {}

abstract class UserdetActionstate extends UserdetState {}

class AddDataState extends UserdetState {}

class GetUserDataState extends UserdetState {
  final Userinfo user;

  GetUserDataState({required this.user});
}

class ProfileInitialState extends UserdetState {
  final Userinfo userinfo;

  ProfileInitialState({required this.userinfo});
}

class UpdateDataState extends UserdetState {
  final Userinfo getdata;

  UpdateDataState({required this.getdata});
}
