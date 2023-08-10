import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_workout_bloc/functions/user_functions.dart';
import 'package:home_workout_bloc/model/user_data.dart';

import 'package:meta/meta.dart';

part 'userdet_event.dart';
part 'userdet_state.dart';

class UserdetBloc extends Bloc<UserdetEvent, UserdetState> {
  UserdetBloc() : super(UserdetInitial()) {
    on<Adduserdata>(adduserdata);

    on<Updateuserdata>(updateuserdata);
    on<InitialProfileevent>(initialProfileevent);
  }

  FutureOr<void> adduserdata(
      Adduserdata event, Emitter<UserdetState> emit) async {
    UserInfoData userdata = UserInfoData();
    Userinfo userinfo = Userinfo(
        name: event.name,
        weight: event.weight,
        height: event.height,
        age: event.age);
    await userdata.adddetails(userinfo);
    emit(AddDataState());
  }

  FutureOr<void> updateuserdata(
      Updateuserdata event, Emitter<UserdetState> emit) async {
    UserInfoData userInfoData = UserInfoData();
    Userinfo userinfo = Userinfo(
        name: event.name,
        weight: event.weight,
        height: event.height,
        age: event.age);

    await userInfoData.editinfo(0, userinfo);
    emit(UpdateDataState(getdata: userinfo));
  }

  FutureOr<void> initialProfileevent(
      InitialProfileevent event, Emitter<UserdetState> emit) async {
    Userinfo userinfo = await UserInfoData().getdetail();

    emit(ProfileInitialState(userinfo: userinfo));
  }
}
