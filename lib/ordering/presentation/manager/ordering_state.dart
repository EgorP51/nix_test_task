part of 'ordering_bloc.dart';

abstract class OrderingState extends Equatable {
  const OrderingState();
}

class OrderingInitial extends OrderingState {
  @override
  List<Object> get props => [];
}
