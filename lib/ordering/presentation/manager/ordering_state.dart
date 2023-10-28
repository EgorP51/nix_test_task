part of 'ordering_bloc.dart';

class OrderingState extends Equatable {
  const OrderingState({
    this.savedUsers,
    this.isRecipientAdding = true,
    this.isSenderAdding = true,
  });

  final bool isSenderAdding;
  final bool isRecipientAdding;
  final List<UserModel>? savedUsers;

  OrderingState copyWith({
    bool? isSenderAdding,
    bool? isRecipientAdding,
    List<UserModel>? savedUsers,
  }) {
    return OrderingState(
      isSenderAdding: isSenderAdding ?? this.isSenderAdding,
      isRecipientAdding: isRecipientAdding ?? this.isRecipientAdding,
      savedUsers: savedUsers ?? this.savedUsers,
    );
  }

  @override
  List<Object?> get props {
    return [
      isSenderAdding,
      isRecipientAdding,
      savedUsers,
    ];
  }
}
