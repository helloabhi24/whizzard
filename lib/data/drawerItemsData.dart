import '../model/drawerItemModel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItemsData {
  static const home = DrawerItem(title: "HOME", icon: FontAwesomeIcons.house);
  static const myTrips =
      DrawerItem(title: "MY TRIPS", icon: FontAwesomeIcons.personRunning);
  static const calendraShift =
      DrawerItem(title: "CALENDAR SHIFTS", icon: FontAwesomeIcons.calendarDay);
  static const profile =
      DrawerItem(title: "PROFILE", icon: FontAwesomeIcons.person);
  static const myPlans =
      DrawerItem(title: "MY PLANS", icon: FontAwesomeIcons.fileInvoice);
  static const myVouchers = DrawerItem(
      title: "MY VOUCHERS", icon: FontAwesomeIcons.fileInvoiceDollar);
  static const refer =
      DrawerItem(title: "REFER A FRIEND", icon: FontAwesomeIcons.share);

  static final List<DrawerItem> all = [
    home,
    myTrips,
    calendraShift,
    profile,
    myPlans,
    myVouchers,
    refer
  ];
}
