import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'ordering_event.dart';
part 'ordering_state.dart';

class OrderingBloc extends Bloc<OrderingEvent, OrderingState> {
  OrderingBloc() : super(OrderingInitial()) {
    on<OrderingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
