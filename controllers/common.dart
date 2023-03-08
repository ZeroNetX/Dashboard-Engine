import '../imports.dart';

Future<void> init() async {
  await ZeroNet.instance.connect(Utils.urlHello);
  await sitesController.getSitesAvailable();
  await certsController.getCertsAvailable();
  if (certsController.certsAvailable.isNotEmpty) {
    siteUiController.setZeroNetUserStatus(ZeroNetUserStatus.REGISTERED);
    final zeroidCert = certsController.certsAvailable['zeroid.bit'] ??
        certsController.certsAvailable.values.first;
    siteUiController.setZeroNetUserId(zeroidCert.authUserName);
  }
}

Future<void> getUserSettings() async {
  final res = await ZeroNet.instance.userGetGlobalSettingsFuture();
  if (res.result is Map) {
    zeroBrowserTheme = res.result['theme'] ?? 'light';
  }
}
