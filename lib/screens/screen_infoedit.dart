import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_workout_bloc/bloc/userdet_bloc.dart';
import '../constants/const_color.dart';
import '../functions/user_functions.dart';
import '../model/user_data.dart';

class Screeninfoedit extends StatefulWidget {
  const Screeninfoedit({
    super.key,
  });

  @override
  State<Screeninfoedit> createState() => _ScreeninfoeditState();
}

class _ScreeninfoeditState extends State<Screeninfoedit> {
  TextEditingController namecontroller = TextEditingController();

  TextEditingController weightcontroller = TextEditingController();

  TextEditingController heightcontroller = TextEditingController();

  TextEditingController agecontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return BlocBuilder<UserdetBloc, UserdetState>(
      builder: (context, state) {
        if (state is ProfileInitialState) {
          namecontroller.text = state.userinfo.name!;
          weightcontroller.text = state.userinfo.weight!;
          heightcontroller.text = state.userinfo.height!;
          agecontroller.text = state.userinfo.age!;
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 1,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images (1)-min.jpeg'),
                          fit: BoxFit.cover)),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          width: mediaquery.size.width * 1,
                          height: mediaquery.size.height * 0.20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            color: cardcolor,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Your Name",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      controller: namecontroller,
                                      decoration: const InputDecoration(
                                          label: Text(
                                            'Name',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900),
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Pls fenter your name';
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Your Weight",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: TextFormField(
                                      controller: weightcontroller,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                          label: Text(
                                            'Kg',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900),
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Plz enter your weight';
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Your Height",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: TextFormField(
                                      controller: heightcontroller,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                          label: Text(
                                            'Feet',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900),
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Plz enter your height';
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Your Age",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: TextFormField(
                                      controller: agecontroller,
                                      keyboardType: TextInputType.number,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: const InputDecoration(
                                          label: Text(
                                            '00-',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900),
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)))),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Plz enter your age';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (formkey.currentState!.validate()) {
                                        BlocProvider.of<UserdetBloc>(context)
                                            .add(Adduserdata(
                                                name: namecontroller.text,
                                                weight: weightcontroller.text,
                                                height: heightcontroller.text,
                                                age: agecontroller.text));
                                        Navigator.of(context).pop();
                                      } else {
                                        ubdatefailed();
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: background,
                                        fixedSize: const Size(140, 45)),
                                    child: const Text(
                                      'UPDATE',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          );
        } else {
          return const Center(
            child: Text('Loading'),
          );
        }
      },
    );
  }

  void ubdatefailed() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Please Change and click Ubdate!"),
      backgroundColor: Colors.red,
      margin: EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      duration: Duration(seconds: 2),
    ));
  }
}
