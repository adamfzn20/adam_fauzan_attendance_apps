import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:adam_fauzan_attendance_apps/utills/widget/pop_up/pop_up_widget.dart';

class AttendanceController extends GetxController {
  final RefreshController refreshController = RefreshController();
  var attendances = <Map<String, dynamic>>[].obs;
  // var userLocation = Rxn<Position>();
  var markers = <String, Marker>{}.obs;
  RxBool hasMore = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchAttendances();
    // _getUserLocation();
    _addPinLocationMarker();
  }

  Future<void> refreshPage() async {
    attendances.clear();
    refreshController.resetNoData();
    hasMore.value = true;
    fetchAttendances();
    refreshController.refreshCompleted();
  }

  Future<void> loadNextPage() async {
    if (hasMore.value) {
      fetchAttendances();
      refreshController.loadComplete();
    } else {
      refreshController.loadNoData();
    }
  }

  void fetchAttendances() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('attendances').get();
    attendances.value = snapshot.docs.map((doc) => doc.data()).toList();
  }

  // Future<void> _getUserLocation() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;

  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return Future.error('Location services are disabled.');
  //   }

  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       return Future.error('Location permissions are denied');
  //     }
  //   }

  //   if (permission == LocationPermission.deniedForever) {
  //     return Future.error(
  //         'Location permissions are permanently denied, we cannot request permissions.');
  //   }

  //   userLocation.value = await Geolocator.getCurrentPosition();
  // }

  void _addPinLocationMarker() {
    // Define your pin location here
    const double pinLatitude = -6.200000;
    const double pinLongitude = 106.816666;

    const marker = Marker(
      markerId: MarkerId('pinLocation'),
      position: LatLng(pinLatitude, pinLongitude),
      infoWindow: InfoWindow(title: 'Pin Location'),
    );

    markers['pinLocation'] = marker;
  }

  Future<void> checkIn(BuildContext context) async {
    // if (userLocation.value == null) {
    //   Get.snackbar('Error', 'Could not determine your location');
    //   return;
    // }

    // const pinLocation = LatLng(-6.243779,106.7113224);
    // final distance = Geolocator.distanceBetween(
    //   userLocation.value!.latitude,
    //   userLocation.value!.longitude,
    //   pinLocation.latitude,
    //   pinLocation.longitude,
    // );

    // if (distance > 50) {
    //   Get.snackbar('Error', 'You are too far from the location');
    //   return;
    // }

    await FirebaseFirestore.instance.collection('attendances').add({
      'timestamp': DateTime.now(),
      'location': '-6.243779,106.7113224',
    });

    fetchAttendances();
    if (context.mounted) {
      await PopUpWidget.successAndFailPopUp(
        context: context,
        titleString: "txt_general_request_sent".tr,
        middleText: "Attendance recorded successfully",
        buttonText: "txt_button_ok".tr,
      );
    }
  }
}
