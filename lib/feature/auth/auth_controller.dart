import 'package:get/get.dart';
import '/data/local/storage/storage_manager.dart';
// import '/model/user.dart';
import '/routes/page_names.dart';
// import '/data/local/secure/secure_storage_manager.dart';

import 'auth_state.dart';

class AuthController extends GetxController {
  static AuthController find = Get.find();
  Rxn<AuthState> authState = Rxn<AuthState>();

  Stream<AuthState?> get stream => authState.stream;
  AuthState? get state => authState.value;

  var storage = StorageManager();

  @override
  void onInit() {
    authState.value = const AuthState(appStatus: AppType.INITIAL);
    super.onInit();
  }

  @override
  void onReady() async {
    ever(authState, authChanged);
    authChanged(state);
    super.onReady();
  }

  authChanged(AuthState? state) async {
    if (state?.appStatus == AppType.INITIAL) {
      Get.offAllNamed(PageName.ATTENDANCE);
    } else if (state?.appStatus == AppType.UNAUTHENTICATED) {
      Get.offAllNamed(PageName.ATTENDANCE);
    } else if (state?.appStatus == AppType.AUTHENTICATED) {
      Get.offAllNamed(PageName.ATTENDANCE);
    } else {
      Get.toNamed(PageName.LOADER);
    }
    update();
  }
}
