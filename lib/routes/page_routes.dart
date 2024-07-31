import 'package:adam_fauzan_attendance_apps/feature/attendance/attendance_binding.dart';
import 'package:adam_fauzan_attendance_apps/feature/attendance/attendance_page.dart';
import 'package:adam_fauzan_attendance_apps/feature/loader/loading_page.dart';
import 'package:get/get.dart';
import 'page_names.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.LOADER,
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: PageName.ATTENDANCE,
      page: () => const AttendancePage(),
      binding: AttendanceBinding(),
    ),
  ];
}
