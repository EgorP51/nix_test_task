part of 'ordering_bloc.dart';

class OrderingState extends Equatable {
  const OrderingState({
    this.savedUsers,
    this.isRecipientAdding = true,
    this.isSenderAdding = true,
    this.senderAddressLineCount = 1,
    this.recipientAddressLineCount = 1,
    this.isValidSenderName = false,
    this.isValidSenderEmail = false,
    this.isValidSenderPhone = false,
    this.isValidRecipientName = false,
    this.isValidRecipientEmail = false,
    this.isValidRecipientPhone = false,
  });

  final bool isSenderAdding;
  final bool isRecipientAdding;
  final List<UserModel>? savedUsers;
  final int senderAddressLineCount;
  final int recipientAddressLineCount;

  final bool isValidSenderName;
  final bool isValidSenderEmail;
  final bool isValidSenderPhone;
  final bool isValidRecipientName;
  final bool isValidRecipientEmail;
  final bool isValidRecipientPhone;

  OrderingState copyWith({
    bool? isSenderAdding,
    bool? isRecipientAdding,
    List<UserModel>? savedUsers,
    int? senderAddressLineCount,
    int? recipientAddressLineCount,
    bool? isValidSenderName,
    bool? isValidSenderEmail,
    bool? isValidSenderPhone,
    bool? isValidRecipientName,
    bool? isValidRecipientEmail,
    bool? isValidRecipientPhone,
  }) {
    return OrderingState(
      isSenderAdding: isSenderAdding ?? this.isSenderAdding,
      isRecipientAdding: isRecipientAdding ?? this.isRecipientAdding,
      savedUsers: savedUsers ?? this.savedUsers,
      recipientAddressLineCount:
          recipientAddressLineCount ?? this.recipientAddressLineCount,
      senderAddressLineCount:
          senderAddressLineCount ?? this.senderAddressLineCount,
      isValidSenderName: isValidSenderName ?? this.isValidSenderName,
      isValidSenderEmail: isValidSenderEmail ?? this.isValidSenderEmail,
      isValidSenderPhone: isValidSenderPhone ?? this.isValidSenderPhone,
      isValidRecipientName: isValidRecipientName ?? this.isValidRecipientName,
      isValidRecipientEmail:
          isValidRecipientEmail ?? this.isValidRecipientEmail,
      isValidRecipientPhone: isValidSenderPhone ?? this.isValidSenderPhone,
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
      isValidSenderName,
      isValidSenderEmail,
      isValidSenderPhone,
      isValidRecipientName,
      isValidRecipientEmail,
      isValidRecipientPhone,
    ];
  }
}
