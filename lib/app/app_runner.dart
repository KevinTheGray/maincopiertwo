import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:user_repository/user_repository.dart';
import 'package:lumberdash/lumberdash.dart';
import 'package:print_lumberdash/print_lumberdash.dart';
import 'package:maincopiertwo/app/app.dart';
import 'package:maincopiertwo/authentication/bloc/bloc.dart';

import 'app_bloc_delegate.dart';

Future<void> runAppRoot(AppFlavor appFlavor) async {
  putLumberdashToWork(withClients: [PrintLumberdash()]);
  BlocSupervisor.delegate = AppBlocDelegate();
  final userRepository = FakeUserRepository();
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            appFlavor.toString(),
          ),
        ),
      ),
    ),
  );
}
