part of 'controllers.dart';

class SiteUiController extends GetxController {
  final zeroNetUserStatus = ZeroNetUserStatus.NOT_REGISTERED.obs;

  void setZeroNetUserStatus(ZeroNetUserStatus status) {
    zeroNetUserStatus.value = status;
  }

  var zeroNetUserId = ''.obs;

  void setZeroNetUserId(String id) {
    zeroNetUserId.value = id;
  }

  final currentSiteInfo = Rx<SiteInfo?>(null);

  void updateCurrentSiteInfo(SiteInfo siteInfo) {
    currentSiteInfo.update((val) => val = siteInfo);
  }

  Rx<AppRoute> currentAppRoute = AppRoute.Home.obs;

  void updateCurrentAppRoute(AppRoute appRoute) =>
      currentAppRoute.value = appRoute;

  Rx<AppTheme> currentTheme = AppTheme.Light.obs;

  void setTheme(AppTheme theme) {
    currentTheme.value = theme;
  }

  RxMap<String?, Setting> settings = <String, Setting>{}.obs;

  void updateSetting(Setting setting) {
    settings[setting.name] = setting;
  }
}
