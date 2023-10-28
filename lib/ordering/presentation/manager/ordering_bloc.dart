import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nix_test_task/ordering/data/data.dart';
import 'package:nix_test_task/ordering/data/models/user_model.dart';

part 'ordering_event.dart';

part 'ordering_state.dart';

class OrderingBloc extends Bloc<OrderingEvent, OrderingState> {
  OrderingBloc() : super(const OrderingState()) {
    on<InitialEvent>((event, emit) {
      List<UserModel> savedUsers = Data.savedUsers;
      emit(state.copyWith(savedUsers: savedUsers));
    });
    on<ChangeSenderDetails>((event, emit) {
      emit(state.copyWith(isSenderAdding: !state.isSenderAdding));
    });
  }
}
