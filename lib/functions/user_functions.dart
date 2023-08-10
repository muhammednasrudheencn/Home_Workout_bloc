import 'package:hive_flutter/adapters.dart';

import '../model/user_data.dart';

class UserInfoData {
  Future<void> adddetails(Userinfo userdetail) async {
    final userdb = await Hive.openBox<Userinfo>('infodb');
    await userdb.add(userdetail);
  }

  Future<Userinfo> getdetail() async {
    final userdb = await Hive.openBox<Userinfo>('infodb');
    return userdb.values.last;
  }

  Future<void> editinfo(int index, Userinfo userdetail) async {
    final userdb = await Hive.openBox<Userinfo>('infodb');
    await userdb.putAt(index, userdetail);
    getdetail();
  }

  Future<void> deleteuser(int index) async {
    final userdb = await Hive.openBox<Userinfo>('infodb');
    await userdb.deleteAt(index);
    getdetail();
  }
}
