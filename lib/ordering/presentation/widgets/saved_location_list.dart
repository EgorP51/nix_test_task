import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/ui/order_colors.dart';
import 'package:nix_test_task/ordering/constants/ui/order_icons.dart';
import 'package:nix_test_task/ordering/constants/ui/order_text_styles.dart';
import 'package:nix_test_task/ordering/data/models/user_model.dart';

class SavedLocationList extends StatelessWidget {
  const SavedLocationList({super.key, required this.users});

  final List<UserModel?>? users;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(users?.length ?? 0, (index) {
        return SavedLocationItem(user: users?[index]);
      }),
    );
  }
}

class SavedLocationItem extends StatelessWidget {
  const SavedLocationItem({super.key, required this.user});

  final UserModel? user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: NumericConstants.defaultPadding / 2,
        horizontal: NumericConstants.defaultPadding,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: OrderColors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(
            user?.fullName ?? '',
            style: OrderTextStyles.headerSemiBold.copyWith(
              fontSize: 14,
              color: OrderColors.white,
            ),
          ),
          trailing: InkWell(
            onTap: () {
              //here is the logic for clicking the edit button
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: OrderIcons.edit,
            ),
          ),
          subtitle: Text(
            '${user?.country ?? ''}, ${user?.city ?? ''}, ${user?.address ?? ''}, ${user?.postcode ?? ''}',
            style: OrderTextStyles.textRegular.copyWith(
              color: OrderColors.gray5,
            ),
          ),
        ),
      ),
    );
  }
}
