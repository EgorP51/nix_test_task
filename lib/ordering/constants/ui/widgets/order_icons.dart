import 'package:flutter_svg/flutter_svg.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';

class OrderIcons {
  static SvgPicture dateIcon = SvgPicture.asset('assets/icons/date_icon.svg');
  static SvgPicture user = SvgPicture.asset('assets/icons/user.svg');
  static SvgPicture email = SvgPicture.asset('assets/icons/email.svg');
  static SvgPicture phone = SvgPicture.asset('assets/icons/phone.svg');
  static SvgPicture location = SvgPicture.asset('assets/icons/location.svg');
  static SvgPicture city = SvgPicture.asset('assets/icons/city.svg');
  static SvgPicture pin = SvgPicture.asset('assets/icons/pin.svg');
  static SvgPicture post = SvgPicture.asset('assets/icons/post.svg');

  static Map<String, SvgPicture> iconTextFieldMap = {
    Texts.startDate: dateIcon,
    Texts.fullName: user,
    Texts.email: email,
    Texts.phoneNumber: phone,
    Texts.country: location,
    Texts.city: city,
    Texts.addressLine: pin,
    Texts.postcode: post,
  };
}
