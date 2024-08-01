import 'package:adam_fauzan_attendance_apps/feature/attendance/attendance_controller.dart';
import 'package:adam_fauzan_attendance_apps/utills/widget/app_bar/app_bar_widget.dart';
import 'package:adam_fauzan_attendance_apps/utills/widget/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AttendanceController>(builder: (controller) {
      return Scaffold(
        appBar: AppBarWidget.secondaryAppbar(
            titleString: "txt_live_attendance_live_attendance".tr,
            context: context),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: Obx(() {
                  return GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        controller.userLocation.value!.latitude,
                        controller.userLocation.value!.longitude,
                      ),
                      zoom: 15,
                    ),
                    markers: Set<Marker>.of(controller.markers.values),
                  );
                }),
              ),
              Center(
                  child: PrimaryButton(
                onPressed: controller.checkIn,
                title: 'Absent',
              )),
              Obx(() {
                if (controller.attendances.isEmpty) {
                  return Text("No attendance records found.");
                }
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.attendances.length,
                  itemBuilder: (context, index) {
                    final attendance = controller.attendances[index];
                    return ListTile(
                      title: Text('Attendance: ${attendance['timestamp']}'),
                      subtitle: Text('Location: ${attendance['location']}'),
                    );
                  },
                );
              }),
            ],
          ),
        ),
      );
    });
  }
}
