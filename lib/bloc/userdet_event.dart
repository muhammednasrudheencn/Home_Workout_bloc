part of 'userdet_bloc.dart';

@immutable
abstract class UserdetEvent {}

class Adduserdata extends UserdetEvent {
  final String name;
  final String weight;
  final String height;
  final String age;

  Adduserdata({
    required this.name,
    required this.weight,
    required this.height,
    required this.age,
  });
}

class InitialProfileevent extends UserdetEvent {}

class GetUserDataEvent extends UserdetEvent {}

class Updateuserdata extends UserdetEvent {
  final String name;
  final String weight;
  final String height;
  final String age;

  Updateuserdata({
    required this.name,
    required this.weight,
    required this.height,
    required this.age,
  });
}
