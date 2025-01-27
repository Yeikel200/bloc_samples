import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_flow/app/app.dart';
import 'package:form_flow/signup/signup.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: SignUpPage());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpBloc(),
      child: const SignUpView(),
    );
  }
}

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.complete) {
          context.read<AppBloc>().add(AppSignUpCompleted(state.user));
        }
      },
      child: FlowBuilder(
        state: context.select((SignUpBloc bloc) => bloc.state),
        onGeneratePages: onGenerateSignUpPages,
      ),
    );
  }
}
