part of 'ordering_bloc.dart';

class OrderingState extends Equatable {
  const OrderingState({
    this.savedUsers,
    this.isSenderAdding = true,
  });

  final bool isSenderAdding;
  final List<UserModel>? savedUsers;

  OrderingState copyWith({
    bool? isSenderAdding,
    List<UserModel>? savedUsers,
  }) {
    return OrderingState(
      isSenderAdding: isSenderAdding ?? this.isSenderAdding,
      savedUsers: savedUsers ?? this.savedUsers,
    );
  }

  @override
  List<Object?> get props {
    return [
      isSenderAdding,
    ];
  }
}
