import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/order_response_model.dart';
import '../../data/models/requests/order_request_model.dart';
import '../../domain/repositories/order_repository.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository orderRpository;

  OrderBloc({required this.orderRpository}) : super(const _StateInitial()) {
    on<_SubmitOrder>((event, emit) async {
      emit(const _StateLoading());

      final either = await orderRpository.submitOrder(event.model);

      either.fold((message) {
        emit(_StateError(message));
      }, (model) {
        emit(_StateLoaded(model));
      });
    });
  }
}
