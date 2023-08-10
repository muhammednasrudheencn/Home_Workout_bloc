import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_workout_bloc/bloc/userdet_bloc.dart';
import 'package:home_workout_bloc/screens/screen_infoedit.dart';

import '../constants/const_color.dart';
import '../functions/user_functions.dart';
import '../model/user_data.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    context.read<UserdetBloc>().add(GetUserDataEvent());
    UserInfoData userInfoData = UserInfoData();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              SingleChildScrollView(
                child: Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.40,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/istockphoto-1324042769-612x612-min.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.63,
                  decoration: const BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        FittedBox(
                          child: Card(
                            color: cardcolor,
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: BlocBuilder<UserdetBloc, UserdetState>(
                                  builder: (context, state) {
                                    if (state is ProfileInitialState) {
                                      return Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const SizedBox(
                                                width: 150,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text(
                                                      "Name",
                                                      style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text(
                                                      "Weight",
                                                      style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text(
                                                      "Height",
                                                      style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text(
                                                      'Age',
                                                      style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Text(
                                                    ":",
                                                    style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Text(
                                                    ":",
                                                    style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Text(":",
                                                      style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w900)),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Text(":",
                                                      style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w900)),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 150,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text(
                                                      state.userinfo.name!,
                                                      style: const TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text(
                                                      state.userinfo.weight!,
                                                      style: const TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text(state.userinfo.height!,
                                                        style: const TextStyle(
                                                            fontSize: 19,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w900)),
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text(state.userinfo.age!,
                                                        style: const TextStyle(
                                                            fontSize: 19,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w900)),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      );
                                    } else {
                                      return const Center(
                                        child: Text('loading'),
                                      );
                                    }
                                  },
                                )),
                          ),
                        ),
                        SizedBox(
                          height: mediaquery.size.height * 0.15,
                        ),
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: background,
                                shadowColor: Colors.white,
                                elevation: 10,
                                side: const BorderSide(
                                    width: 0.1, color: Colors.white),
                                fixedSize: Size(mediaquery.size.width * 0.40,
                                    mediaquery.size.height * 0.06)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => const Screeninfoedit()));
                            },
                            icon: const Icon(Icons.edit),
                            label: const Text(
                              'EDIT',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
