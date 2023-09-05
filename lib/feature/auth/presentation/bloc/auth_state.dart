part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _StateInitial;
  const factory AuthState.loading() = _StateLoading;
  const factory AuthState.loaded(AuthResponseModel model) = _StateLoaded;
  const factory AuthState.error(String message) = _StateError;
}
