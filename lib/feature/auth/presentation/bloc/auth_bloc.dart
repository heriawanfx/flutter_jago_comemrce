// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_jago_commerce/feature/auth/data/request/login_request_model.dart';
import 'package:flutter_jago_commerce/feature/auth/data/request/register_request_model.dart';
import 'package:flutter_jago_commerce/feature/auth/data/response/auth_response_model.dart';
import 'package:flutter_jago_commerce/feature/auth/domain/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const _StateInitial()) {
    on<_Login>((event, emit) async {
      emit(const _StateLoading());

      final result = await authRepository.login(event.model);
      result.fold(
        (e) => emit(_StateError(e.toString())),
        (data) => emit(_StateLoaded(data)),
      );
    });
  }
}
