// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:flutter_jago_commerce/core/auth/data/response/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_jago_commerce/core/auth/data/request/login_request_model.dart';
import 'package:flutter_jago_commerce/core/auth/data/request/register_request_model.dart';
import 'package:flutter_jago_commerce/core/auth/domain/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const _StateInitial()) {
    on<_LoadAuthSession>((event, emit) async {
      final value = await authRepository.getAuthData();
      emit(_StateLoggedIn(value));
    });

    on<_Login>((event, emit) async {
      emit(const _StateLoading());

      final result = await authRepository.login(event.model);
      result.fold(
        (message) => emit(_StateError(message)),
        (model) => emit(_StateLoggedIn(model)),
      );
    });

    on<_Register>((event, emit) async {
      emit(const _StateLoading());

      final result = await authRepository.register(event.model);
      result.fold(
        (message) => emit(_StateError(message)),
        (model) => emit(_StateLoggedIn(model)),
      );
    });

    on<_Logout>(
      (event, emit) async {
        emit(const _StateLoading());

        final result = await authRepository.logout();

        result.fold(
          (message) => emit(_StateError(message)),
          (r) => emit(const _StateLoggedOut()),
        );
      },
    );
  }
}
