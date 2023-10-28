part of 'ordering_bloc.dart';

abstract class OrderingEvent extends Equatable {
  const OrderingEvent();

  @override
  List<Object?> get props => [];
}

class InitialEvent extends OrderingEvent {}

class ChangeSenderDetails extends OrderingEvent {}
