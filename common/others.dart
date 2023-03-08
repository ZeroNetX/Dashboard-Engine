import '../imports.dart';

const List<Feature> unImplementedFeatures = [
  Feature.SITE_DELETE,
  Feature.SITE_PAUSE_RESUME,
];

const List proFeatures = [
  MapOptions.THEME_BLACK,
  MapOptions.LOAD_PLUGIN,
];

const List<AppDeveloper> appDevelopers = [
  AppDeveloper(
    name: 'PramUkesh',
    developerType: 'developer',
    profileIconLink: 'assets/developers/pramukesh.jpg',
    githubLink: '$githubLink/PramUkesh/',
    facebookLink: '$facebookLink/n.bhargavvenky',
    twitterLink: '$twitterLink/PramukeshVenky',
  ),
  AppDeveloper(
    name: 'CANewsIn',
    developerType: 'organisation',
    profileIconLink: 'assets/developers/canewsin.jpg',
    githubLink: '$githubLink/canewsin/',
    facebookLink: '$facebookLink/canews.in',
    twitterLink: '$twitterLink/canewsin',
  ),
];

const String languageSwitcher = 'Language';
const String themeSwitcher = 'Theme';
const String profileSwitcher = 'Profile Switcher';
const String debugZeroNet = 'Debug ZeroNet Code';
const String enableZeroNetConsole = 'Enable ZeroNet Console';
const String enableZeroNetFilters = 'Enable ZeroNet Filters';
const String enableAdditionalTrackers = 'Additional BitTorrent Trackers';
const String pluginManager = 'Plugin Manager';
const String vibrateOnZeroNetStart = 'Vibrate on ZeroNet Start';
const String enableFullScreenOnWebView = 'FullScreen for ZeroNet Zites';
const String batteryOptimisation = 'Disable Battery Optimisation';
const String publicDataFolder = 'Public DataFolder';
const String autoStartZeroNet = 'AutoStart ZeroNet';
const String autoStartZeroNetonBoot = 'AutoStart ZeroNet on Boot';
const String enableTorLog = 'Enable Tor Log';
const String enableInternetAccess = 'Internet Access in Browser';

class Utils {
  static const String urlHello = '1HELLoE3sFD9569CLCbHEAVqvqV7U2Ri9d';
  static const String urlZeroId = '1iD5ZQJMNXu43w1qLB8sfdHVKppVMduGz';
  static const String urlCryptoId = '1oWoUktrXo1p6vkviJUyNXkGHyWznTtRH';
  static const String urlZeroNetMob = '15UYrA7aXr2Nto1Gg4yWXpY3EAJwafMTNk';
  static const String urlTalk = 'Talk.ZeroNetwork.bit';
  static const String btcUrlTalk = '1TaLkFrMwvbNsooF4ioKAY9EuxTBTjipT';
  static const String urlBlog = '1SCribeHs1nz8m3vXipP84oyXUy4nf2ZD';
  static const String btcUrlBlog = '1SCribeHs1nz8m3vXipP84oyXUy4nf2ZD';
  static const String urlMail = 'Mail.ZeroNetX.bit';
  static const String btcUrlMail = '1MaiLX6j5MSddyu8oh5CxxGrhMcSmRo6N8';
  static const String urlMe = 'Me.ZeroNetwork.bit';
  static const String btcUrlMe = '1MeFqFfFFGQfa1J3gJyYYUvb5Lksczq7nH';
  static const String urlSites = 'Sites.ZeroNetX.bit';
  static const String btcUrlSites = '1SitesVCdgNfHojzf2aGKQrD4dteAZR1k';

  static var initialSites = {
    'Dashboard': {
      'description': strController.zerohelloSiteDesStr.value,
      'url': urlHello,
      'btcAddress': urlHello,
    },
    'ThreadIt': {
      'description': strController.zeronetMobileSiteDesStr.value,
      'url': urlZeroNetMob,
      'btcAddress': urlZeroNetMob,
    },
    'Scribe': {
      'description': strController.zeroblogSiteDesStr.value,
      'url': urlBlog,
      'btcAddress': btcUrlBlog,
    },
    'ZeroMe': {
      'description': strController.zeromeSiteDesStr.value,
      'url': urlMe,
      'btcAddress': btcUrlMe,
    },
    'ZeroSitesX': {
      'description': strController.zeroSitesSiteDesStr.value,
      'url': urlSites,
      'btcAddress': btcUrlSites,
    },
    'ZeroMailX': {
      'description': strController.zeromailSiteDesStr.value,
      'url': urlMail,
      'btcAddress': btcUrlMail,
    },
  };

  // 'ZeroName': '1Name2NXVi1RDPDgf5617UoW7xA6YrhM9F',

  // static const String createProfile = 'Create'; // New Profile
  // static const String importProfile = 'Import'; // Profile
  // static const String backupProfile = 'Backup'; // Profile

  // static const String openPluginManager = 'Open Plugin Manager';
  // static const String loadPlugin = 'Load Custom Plugin';

  static Map<String, Setting> defSettings = {
    languageSwitcher: MapSetting(
      name: strController.languageSwitcherStr.value,
      description: strController.languageSwitcherDesStr.value,
      map: {
        "selected": '',
        "all": [],
      },
      options: [],
    ),
    themeSwitcher: MapSetting(
      name: strController.themeSwitcherStr.value,
      description: strController.themeSwitcherDesStr.value,
      map: {},
      options: [
        MapOptions.THEME_LIGHT,
        MapOptions.THEME_DARK,
        MapOptions.THEME_BLACK,
      ],
    ),
    profileSwitcher: MapSetting(
      name: strController.profileSwitcherStr.value,
      description: strController.profileSwitcherDesStr.value,
      map: {
        "selected": '',
        "all": [],
      },
      options: [
        MapOptions.CREATE_PROFILE,
        MapOptions.IMPORT_PROFILE,
        MapOptions.BACKUP_PROFILE,
      ],
    ),
    pluginManager: MapSetting(
        name: strController.pluginManagerStr.value,
        description: strController.pluginManagerDesStr.value,
        map: {},
        options: [
          MapOptions.OPEN_PLUGIN_MANAGER,
          MapOptions.LOAD_PLUGIN,
        ]),
    batteryOptimisation: ToggleSetting(
      name: strController.batteryOptimisationStr.value,
      description: strController.batteryOptimisationDesStr.value,
      value: false,
    ),
    enableAdditionalTrackers: ToggleSetting(
      name: strController.enableAdditionalTrackersStr.value,
      description: strController.enableAdditionalTrackersDesStr.value,
      value: true,
    ),
    enableZeroNetFilters: ToggleSetting(
      name: strController.enableZeroNetFiltersStr.value,
      description: strController.enableZeroNetFiltersDesStr.value,
      value: true,
    ),
    publicDataFolder: ToggleSetting(
      name: strController.publicDataFolderStr.value,
      description: strController.publicDataFolderDesStr.value,
      value: false,
    ),
    vibrateOnZeroNetStart: ToggleSetting(
      name: strController.vibrateOnZeroNetStartStr.value,
      description: strController.vibrateOnZeroNetStartDesStr.value,
      value: false,
    ),
    enableFullScreenOnWebView: ToggleSetting(
      name: strController.enableFullScreenOnWebViewStr.value,
      description: strController.enableFullScreenOnWebViewDesStr.value,
      value: false,
    ),
    autoStartZeroNet: ToggleSetting(
      name: strController.autoStartZeroNetStr.value,
      description: strController.autoStartZeroNetDesStr.value,
      value: true,
    ),
    autoStartZeroNetonBoot: ToggleSetting(
      name: strController.autoStartZeroNetonBootStr.value,
      description: strController.autoStartZeroNetonBootDesStr.value,
      value: false,
    ),
    debugZeroNet: ToggleSetting(
      name: strController.debugZeroNetStr.value,
      description: strController.debugZeroNetDesStr.value,
      value: false,
    ),
    enableZeroNetConsole: ToggleSetting(
      name: strController.enableZeroNetConsoleStr.value,
      description: strController.enableZeroNetConsoleDesStr.value,
      value: false,
    ),
    enableTorLog: ToggleSetting(
      name: strController.enableTorLogStr.value,
      description: strController.enableTorLogDesStr.value,
      value: false,
    ),
    enableInternetAccess: ToggleSetting(
      name: strController.enableInternetAccessStr.value,
      description: strController.enableInternetAccessDesStr.value,
      value: false,
    ),
  };
}

enum MapOptions {
  CREATE_PROFILE,
  IMPORT_PROFILE,
  BACKUP_PROFILE,

  OPEN_PLUGIN_MANAGER,
  LOAD_PLUGIN,

  THEME_LIGHT,
  THEME_DARK,
  THEME_BLACK,
}

extension MapOptionExt on MapOptions {
  get description {
    switch (this) {
      case MapOptions.CREATE_PROFILE:
        return strController.createNewProfileStr.value;
      case MapOptions.IMPORT_PROFILE:
        return strController.importProfileStr.value;
      case MapOptions.BACKUP_PROFILE:
        return strController.backupProfileStr.value;
      case MapOptions.OPEN_PLUGIN_MANAGER:
        return strController.openPluginManagerStr.value;
      case MapOptions.LOAD_PLUGIN:
        return strController.loadPluginStr.value;
      case MapOptions.THEME_LIGHT:
        return 'Light';
      case MapOptions.THEME_DARK:
        return 'Dark';
      case MapOptions.THEME_BLACK:
        return 'Black';
    }
  }

  void onClick(BuildContext? context) async {
    switch (this) {
      case MapOptions.CREATE_PROFILE:
        {
          if (isZeroNetUserDataExists()) {
            showDialogW(
              context: context!,
              title: strController.existingProfileTitleStr.value,
              body: ProfileSwitcherUserNameEditText(),
              actionOk: Row(
                children: <Widget>[
                  TextButton(
                    child: Text(strController.createStr.value),
                    onPressed: () {
                      if (username.isNotEmpty) {
                        File file = File(getZeroNetUsersFilePath());
                        var f = file.renameSync(
                            getZeroNetDataDir().path + '/users-$username.json');
                        if (f.existsSync()) {
                          if (file.existsSync()) file.deleteSync();
                          Navigator.pop(context);
                          //TODO: Handle Shutdown
                          // ZeroNet.instance.shutDown();
                          service.sendData({'cmd': 'runZeroNet'});
                        }
                        username = '';
                        siteUiController
                            .updateCurrentAppRoute(AppRoute.Settings);
                        var value2 = uiStore.reload.value;
                        uiStore.updateReload(value2 + 1);
                        // loadUsersFromFileSystem();
                      } else {
                        validUsername = false;
                        // _reload();
                      }
                    },
                  ),
                  TextButton(
                    child: Text(strController.backupStr.value),
                    onPressed: () => backUpUserJsonFile(context),
                  ),
                ],
              ),
            );
          } else
            zeronetNotInit(context!);
        }
        break;
      case MapOptions.IMPORT_PROFILE:
        {
          var file = await getUserJsonFile();
          if (file != null && file.path.endsWith('users.json')) {
            var isSameUser = file.existsSync()
                ? getZeroNetUsersFilePath() == file.path
                : false;
            showDialogW(
              context: context!,
              title: strController.restoreProfileTitleStr.value,
              body: Text(
                '${strController.restoreProfileDesStr.value}'
                '$filePath'
                '\n\n${isSameUser ? '${strController.restoreProfileDes1Str.value}' : ''}',
              ),
              actionOk: Row(
                children: <Widget>[
                  TextButton(
                    onPressed: isSameUser
                        ? null
                        : () async {
                            File f = File(getZeroNetUsersFilePath());
                            printOut(f.path);
                            if (!isSameUser) {
                              if (f.existsSync()) f.deleteSync();
                              f.createSync();
                              f.writeAsStringSync(file.readAsStringSync());
                              // _reload();
                              try {
                                //TODO: Handle Shutdown
                                // ZeroNet.instance.shutDown();
                              } catch (e) {
                                printOut(e);
                              }
                              service.sendData({'cmd': 'runZeroNet'});
                              Navigator.pop(context);
                            }
                          },
                    child: Text(
                      strController.restoreStr.value,
                    ),
                  ),
                  TextButton(
                    child: Text(strController.backupStr.value),
                    onPressed: () => backUpUserJsonFile(context),
                  ),
                ],
              ),
            );
          }
        }
        break;
      case MapOptions.BACKUP_PROFILE:
        backUpUserJsonFile(context);
        break;
      case MapOptions.LOAD_PLUGIN:
        {
          if (kisProUser)
            showDialogW(
              context: context!,
              title: strController.zninstallAPluginTitleStr.value,
              body: Text(
                strController.zninstallAPluginDesStr.value,
                style: TextStyle(
                  color: siteUiController.currentTheme.value.primaryTextColor,
                ),
              ),
              actionOk: TextButton(
                onPressed: () async {
                  var file = await getPluginZipFile();
                  if (file != null) {
                    Navigator.pop(context);
                    installPluginDialog(file, context);
                  }
                },
                child: Text(strController.installStr.value),
              ),
            );
          else
            showDonationRequiredDialog(context!);
        }
        break;
      case MapOptions.OPEN_PLUGIN_MANAGER:
        showDialogW(
          context: context!,
          title: pluginManager,
          body: PluginManager(),
          actionOk: TextButton(
            onPressed: () {
              //TODO: Handle Shutdown
              // ZeroNet.instance.shutDown();
              service.sendData({'cmd': 'runZeroNet'});
              Navigator.pop(context);
            },
            child: Text(strController.restartStr.value),
          ),
        );
        break;
      case MapOptions.THEME_LIGHT:
        siteUiController.setTheme(AppTheme.Light);
        var setting = (siteUiController.settings[themeSwitcher] as MapSetting)
          ..map!['selected'] = 'Light';
        siteUiController.updateSetting(setting);
        saveSettings(siteUiController.settings);
        break;
      case MapOptions.THEME_DARK:
        siteUiController.setTheme(AppTheme.Dark);
        var setting = (siteUiController.settings[themeSwitcher] as MapSetting)
          ..map!['selected'] = 'Dark';
        siteUiController.updateSetting(setting);
        saveSettings(siteUiController.settings);
        break;
      case MapOptions.THEME_BLACK:
        if (kisProUser) {
          siteUiController.setTheme(AppTheme.Black);
          var setting = (siteUiController.settings[themeSwitcher] as MapSetting)
            ..map!['selected'] = 'Black';
          siteUiController.updateSetting(setting);
          saveSettings(siteUiController.settings);
        } else
          showDonationRequiredDialog(context!);
        break;
      default:
    }
  }
}

void showDonationRequiredDialog(BuildContext context) => showDialogW(
      context: context,
      title: strController.proFeatureTitleStr.value,
      body: Text(
        strController.proFeatureDesStr.value,
        style: TextStyle(
          color: siteUiController.currentTheme.value.primaryTextColor,
        ),
      ),
      // actionOk: TextButton(
      //   onPressed: () => Navigator.pop(context),
      //   child: Text(strController.closeStr.value),
      // ),
    );

enum Feature {
  SITE_PAUSE_RESUME,
  SITE_DELETE,
  IN_APP_UPDATES,
}
