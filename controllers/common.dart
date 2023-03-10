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
  var translations = loadTranslations();
  if (siteUiController.settings.keys.contains(languageSwitcher)) {
    var setting = siteUiController.settings[languageSwitcher] as MapSetting;
    var language = setting.map!['selected'];
    var code = translations![language] ?? 'en';
    if (code != 'en')
      strController.loadTranslationsFromFile(
        getZeroNetDataDir().path +
            '/' +
            Utils.urlZeroNetMob +
            '/translations/' +
            'strings-$code.json',
      );
  }
  // loadUsersFromFileSystem();
  if (siteUiController.settings.keys.contains(themeSwitcher)) {
    var setting = siteUiController.settings[themeSwitcher] as MapSetting;
    var theme = setting.map!['selected'];
    if (theme == 'Dark') {
      siteUiController.setTheme(AppTheme.Dark);
    } else {
      siteUiController.setTheme(AppTheme.Light);
    }
  }
}

Future<void> getUserSettings() async {
  final res = await ZeroNet.instance.userGetGlobalSettingsFuture();
  if (res.result is Map) {
    zeroBrowserTheme = res.result['theme'] ?? 'light';
  }
}
