part of 'ordering_bloc.dart';

class OrderingState extends Equatable {
  const OrderingState({
    this.savedUsers,
    this.isRecipientAdding = true,
    this.isSenderAdding = true,
    this.senderAddressLineCount = 1,
    this.recipientAddressLineCount = 1,
  });

  final bool isSenderAdding;
  final bool isRecipientAdding;
  final List<UserModel>? savedUsers;
  final int senderAddressLineCount;
  final int recipientAddressLineCount;

  OrderingState copyWith({
    bool? isSenderAdding,
    bool? isRecipientAdding,
    List<UserModel>? savedUsers,
    int? senderAddressLineCount,
    int? recipientAddressLineCount,
  }) {
    return OrderingState(
      isSenderAdding: isSenderAdding ?? this.isSenderAdding,
      isRecipientAdding: isRecipientAdding ?? this.isRecipientAdding,
      savedUsers: savedUsers ?? this.savedUsers,
      recipientAddressLineCount:
          recipientAddressLineCount ?? this.recipientAddressLineCount,
      senderAddressLineCount:
          senderAddressLineCount ?? this.senderAddressLineCount,
    );
  }

  @override
  List<Object?> get props {
    return [
      isSenderAdding,
      isRecipientAdding,
      savedUsers,
      recipientAddressLineCount,
      senderAddressLineCount,
    ];
  }
}
