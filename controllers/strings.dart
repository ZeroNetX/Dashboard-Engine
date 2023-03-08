part of 'controllers.dart';

class StrController extends GetxController {
  final statusStr = 'Status'.obs;
  final userStatusStr = 'User Id'.obs;
  final userNameNotCreatedStr = 'Not Created'.obs;
  final statusNotRunningStr = 'Not Running'.obs;
  final statusInitializingStr = 'Initializing..'.obs;
  final statusStartingStr = 'Starting'.obs;
  final statusRunningStr = 'Running'.obs;
  final statusRunningWithTorStr = 'Running with Tor'.obs;
  final statusErrorStr = 'Error'.obs;
  final popularSitesStr = 'Popular Sites'.obs;
  final startZeroNetFirstStr =
      'Please Start ZeroNet First to Browse this Zite'.obs;
  final createStr = 'Create'.obs;
  final openStr = 'OPEN'.obs;
  final downloadStr = 'DOWNLOAD'.obs;
  final addToHomeScreenStr = 'Add to HomeScreen'.obs;
  final showLogStr = 'Show Log'.obs;
  final pauseStr = 'Pause'.obs;
  final resumeStr = 'Resume'.obs;
  final deleteZiteStr = 'Delete Zite'.obs;
  final shrtAddedToHomeScreenStr = 'shortcut added to HomeScreen'.obs;
  final startStr = 'Start'.obs;
  final restartStr = 'Restart'.obs;
  final pleaseWaitStr = 'Please Wait..!'.obs;
  final stopStr = 'Stop'.obs;
  final closeStr = 'Close'.obs;
  final viewLogStr = 'View Log'.obs;
  final aboutStr = 'About'.obs;
  final settingsStr = 'Settings'.obs;
  final browserStr = 'Browser'.obs;
  final logStr = 'Log'.obs;
  final updateStr = 'Update'.obs;
  final downloadingStr = 'Downloading'.obs;
  final downloadedStr = 'Downloaded'.obs;
  final installStr = 'Install'.obs;
  final restoreStr = 'Restore'.obs;
  final installingStr = 'Installing'.obs;
  final installationCompletedStr = 'Installation Completed'.obs;
  final notAvaliableStr = 'Not Available'.obs;
  final aboutAppDesStr = 'ZeroNet Mobile is a full native client for ZeroNet, '
          'a platform for decentralized websites using Bitcoin '
      .obs;
  final aboutAppDes1Str =
      'crypto and the BitTorrent network. you can learn more about ZeroNet at '
          .obs;
  final developersStr = 'Developers'.obs;
  final donationAddrsStr = 'Donation Addresses'.obs;
  final clickAddrToCopyStr = '* Click on Address to copy'.obs;
  final donAddrCopiedStr = 'Donation Address Copied to Clipboard'.obs;
  final donationDes = "* Any Donation can activate all pro-features in app, "
          "these are just an encouragement to me to work more on the app. "
          "Pro-features will be made available to general public after certain time, "
          "thus you don't need to worry about exclusiveness of a feature. "
          "If you donate from any source other than Google Play Purchase, "
          "just send your transaction id to canews.in@gmail.com / ZeroMail: zeromepro, "
          "so than I can send activation code to activate pro-features."
      .obs;
  final contributeStr = 'Contribute'.obs;
  final contributeDesStr = "If you want to support project's further development, "
          "you can contribute your time or money, "
          "If you want to contribute money you can send bitcoin or "
          "other supported crypto currencies to above addresses or buy in-app purchases, "
          "if want to contribute translations or code, visit official GitHub repo."
      .obs;
  final googlePurchasesStr = 'Google Play Purchases'.obs;
  final googleFeeWarningStr = '(including 15% Google Tax) :'.obs;
  final oneTimeSubStr = 'One Time'.obs;
  final monthlySubStr = 'Monthly Subscriptions'.obs;
  final tipStr = 'Tip'.obs;
  final coffeeStr = 'Coffee'.obs;
  final lunchStr = 'Lunch'.obs;
  final usersFileCopied = 'Users.json content copied to Clipboard'.obs;
  final chkBckUpStr =
      'Please check yourself that file back up Successfully.'.obs;
  final zeroNetNotInitTitleStr = 'ZeroNet data folder not Exists.'.obs;
  final zeroNetNotInitDesStr =
      "ZeroNet should be used atleast once (run it from home screen), "
              "before using this option"
          .obs;
  final loadingStr = 'Loading'.obs;
  final switchProfileToStr = 'Switch Profile to'.obs;
  final switchProfileToDesStr = 'this will delete the existing profile, '
          'backup existing profile using backup button below'
      .obs;
  final backupStr = 'Backup'.obs;
  final switchStr = 'Switch'.obs;
  final loadingPageWarningStr = """
    Please Wait! This may take a while, happens 
    only first time, Don't Press Back button.
    If You Accidentally Pressed Back,
    Clean App Storage in Settings or 
    Uninstall and Reinstall The App.
    """
      .obs;
  final appUpdateAvailableStr = 'App Update Available : '.obs;
  final knowMoreStr = 'Know More'.obs;
  final ratingWgtStr = 'Give Your Rating/Feedback'.obs;
  final siteInfoStr = 'SiteInfo'.obs;
  final backupWarningStr =
      'Always remember to backup users.json before doing anything because, '
              'we are not able to tell when a software will fail. '
              'Click Backup below to backup your Existing users.json file.\n'
          .obs;
  final usernameStr = 'Username'.obs;
  final usernamePhraseStr = 'Username Phrase :'.obs;
  final usrnameWarning1Str = 'username can\'t be Empty'.obs;
  final usrnameWarning2Str = 'username can\'t contain spaces'.obs;
  final usrnameWarning3Str = 'username can\'t be less than 6 characters.'.obs;
  final usrnameWarning4Str =
      'username already exists, choose different one.'.obs;
  final znNotiRunningTitleStr = 'ZeroNet Mobile is Running'.obs;
  final znNotiRunningDesStr = 'Click Here on this Notification to open app'.obs;
  final znNotiNotRunningTitleStr = 'ZeroNet Mobile is Not Running'.obs;
  final znNotiNotRunningDesStr =
      'Open ZeroNet Mobile App and click start to run ZeroNet'.obs;
  final znPluginInstallingTitleStr = 'Installing Plugin'.obs;
  final znPluginInstallingDesStr =
      'This Dialog will be automatically closed after installation, '
              'After Installation Restart ZeroNet from Home page'
          .obs;
  final zninstallAPluginTitleStr = 'Install A Plugin'.obs;
  final zninstallAPluginDesStr = 'This will load plugin to your ZeroNet repo, '
          '\nWarning : Loading Unknown/Untrusted plugins may compromise ZeroNet Installation.'
      .obs;
  final restoreProfileTitleStr = 'Restore Profile ?'.obs;
  final restoreProfileDesStr = 'this will delete the existing profile, '
          'backup existing profile using backup button below\n\n'
          'Selected Userfile : \n'
      .obs;
  final restoreProfileDes1Str =
      'You can only select users.json file, outside zeronet data folder'.obs;
  final existingProfileTitleStr = 'Provide A Name for Existing Profile'.obs;
  final createNewProfileStr = 'Create New Profile'.obs;
  final importProfileStr = 'Import Profile'.obs;
  final backupProfileStr = 'Backup Profile'.obs;
  final openPluginManagerStr = 'Open Plugin Manager'.obs;
  final loadPluginStr = 'Load Plugin'.obs;
  final zerohelloSiteDesStr = 'Say Hello to ZeroNet, a Dashboard to manage '
          'all your ZeroNetX Z(S)ites, You can view feed of other zites like '
          'posts, comments of other users from ThreadIt as well for your posts '
          'and Stats like Total Requests sent and received from other peers on ZeroNetX. '
          'You can also pause, clone or favourite, delete Zites from single page.'
      .obs;
  final zeronetMobileSiteDesStr = 'Forum to report ZeroNetX app issues. '
          'Want a new feature in the app, Request a Feature. '
          'Facing any Bugs while using the app ? '
          'Just report problem here, we will take care of it. '
          'Want to Discuss any topic about app development ? '
          'Just dive into to this Zite.'
      .obs;
  final zeroTalkSiteDesStr = 'Need a forum to discuss something, '
          'we got covered you here. ThreadIt fits your need, '
          'just post something to get opinion from others on Network. '
          'Have some queries ? don\'t hesitate to ask here.'
          'Tired of Spam ? Who don\'t! You can mute individual users also.'
      .obs;
  final zeroblogSiteDesStr = 'Want to Know Where ZeroNet is Going ? '
          'Scribe gives you latest changes and improvements '
          'made to ZeroNetX, including Bug Fixes, '
          'Speed Improvements of ZeroNetX Core Software. '
          'Also Provides varies links to ZeroNet Protocol and '
          'how ZeroNetX works underhood and much more things to know.'
      .obs;
  final zeromailSiteDesStr = 'So you need a mail service, use ZeroMail, '
          'fully end-to-end encrypted mail service on ZeroNet, '
          'don\'t let others scanning your mailbox for their profits '
          'all your data is encrypted and can only opened by you. '
          'Your all mails are backedup, so you can stay calm for your data.'
      .obs;
  final zeromeSiteDesStr = 'Social Network is everywhere, so we made one here too. '
          'Twitter like, Peer to Peer Social Networking in your hands without data-tracking, '
          'Follow others and post your thoughts, like, comment on others posts, it\'s that easy-peasy. '
          'Find Like minded people and increase your friend circle beyond the borders.'
      .obs;
  final zeroSitesSiteDesStr = 'Want to know more sites on ZeroNet, '
          'visit ZeroSites, listing of community contributed sites under various '
          'categories like Blogs, Services, Forums, Chat, Video, Image, Guides, News and much more. '
          'You can even filter those lists with your preferred language '
          'to get more comprehensive list. Has a New Site to Show, Just Submit here.'
      .obs;
  final themeSwitcherStr = 'Theme'.obs;
  final themeSwitcherDesStr = 'Switch App Theme between Light, Dark, Black'.obs;
  final languageSwitcherStr = 'Language'.obs;
  final languageSwitcherDesStr =
      'Change App Language to your Native Speaks'.obs;
  final profileSwitcherStr = 'Profile Switcher'.obs;
  final profileSwitcherDesStr = 'Create and Use different Profiles on ZeroNet, '
          'Import Existing Profiles from other devices, or Backup your Profile. '
          '\nNote: If Backup Profile doesn\'t work. Long Press the "Backup Profile" Button, '
          'it will copy users.json file contents to clipboard, so that you can save the private keys from this option.'
      .obs;
  final debugZeroNetStr = 'Debug ZeroNet Code'.obs;
  final debugZeroNetDesStr =
      'Useful for Developers to find bugs and errors in the code.'.obs;
  final enableZeroNetConsoleStr = 'Enable ZeroNet Console'.obs;
  final enableZeroNetConsoleDesStr =
      'Useful for Developers to see the exec of ZeroNet Python code'.obs;
  final enableZeroNetFiltersStr = 'Enable ZeroNet Filters'.obs;
  final enableZeroNetFiltersDesStr =
      'Enabling ZeroNet Filters blocks known ametuer content sites and spam users.'
          .obs;
  final enableAdditionalTrackersStr = 'Additional BitTorrent Trackers'.obs;
  final enableAdditionalTrackersDesStr =
      'Enabling External/Additional BitTorrent Trackers will give more ZeroNet Site Seeders or Clients.'
          .obs;
  final pluginManagerStr = 'Plugin Manager'.obs;
  final pluginManagerDesStr = 'Enable/Disable ZeroNet Plugins'.obs;
  final vibrateOnZeroNetStartStr = 'Vibrate on ZeroNet Start'.obs;
  final vibrateOnZeroNetStartDesStr = 'Vibrates Phone When ZeroNet Starts'.obs;
  final enableFullScreenOnWebViewStr = 'FullScreen for ZeroNet Zites'.obs;
  final enableFullScreenOnWebViewDesStr =
      'This will Enable Full Screen for in app Webview of ZeroNet'.obs;
  final batteryOptimisationStr = 'Disable Battery Optimisation'.obs;
  final batteryOptimisationDesStr =
      'This will Helps to Run App even App is in Background for long time.'.obs;
  final publicDataFolderStr = 'Public DataFolder'.obs;
  final publicDataFolderDesStr =
      'This Will Make ZeroNet Data Folder Accessible via File Manager.'.obs;
  final autoStartZeroNetStr = 'AutoStart ZeroNet'.obs;
  final autoStartZeroNetDesStr =
      'This Will Make ZeroNet Auto Start on App Start, So you don\'t have to click Start Button Every Time on App Start.'
          .obs;
  final autoStartZeroNetonBootStr = 'AutoStart ZeroNet on Boot'.obs;
  final autoStartZeroNetonBootDesStr =
      'This Will Make ZeroNet Auto Start on Device Boot.'.obs;
  final enableTorLogStr = 'Enable Tor Log'.obs;
  final enableTorLogDesStr =
      'This will Enable Tor Log in ZeroNet Console helpful for debugging.'.obs;
  final enableInternetAccessStr = 'Internet Access in Browser'.obs;
  final enableInternetAccessDesStr =
      'This will Enable Internet Access in ZeroNetX Browser.'.obs;
  final createUserIdFirstStr =
      'Please create User Id or Import your ZeroNet users.json File, to continue your donation. '
              'You can create your User ID at App Home Page. '
              'This will helps to restore your purchase in future.'
          .obs;
  final proFeatureTitleStr = "Donor only Feature".obs;
  final proFeatureDesStr =
      "This Feature is available to Donors, You can activate this with a small donation, visit About Page to Donate."
          .obs;

  void updatestatusStr(String str) => statusStr.value = str;
  void updateUserStatusStr(String str) => userStatusStr.value = str;
  void updateUserNameNotCreatedStr(String str) =>
      userNameNotCreatedStr.value = str;
  void updateCreateUserIdFirstStr(String str) =>
      createUserIdFirstStr.value = str;
  void updatestatusNotRunningStr(String str) => statusNotRunningStr.value = str;
  void updatestatusInitializingStr(String str) =>
      statusInitializingStr.value = str;
  void updatestatusStartingStr(String str) => statusStartingStr.value = str;
  void updatestatusRunningStr(String str) => statusRunningStr.value = str;
  void updatestatusRunningWithTorStr(String str) =>
      statusRunningStr.value = str;
  void updatestatusErrorStr(String str) => statusErrorStr.value = str;
  void updatepopularSitesStr(String str) => popularSitesStr.value = str;
  void updatestartZeroNetFirstStr(String str) =>
      startZeroNetFirstStr.value = str;
  void updatecreateStr(String str) => createStr.value = str;
  void updateopenStr(String str) => openStr.value = str;
  void updatedownloadStr(String str) => downloadStr.value = str;
  void updateaddToHomeScreenStr(String str) => addToHomeScreenStr.value = str;
  void updateshowLogStr(String str) => showLogStr.value = str;
  void updatepauseStr(String str) => pauseStr.value = str;
  void updateresumeStr(String str) => resumeStr.value = str;
  void updatedeleteZiteStr(String str) => deleteZiteStr.value = str;
  void updateshrtAddedToHomeScreenStr(String str) =>
      shrtAddedToHomeScreenStr.value = str;
  void updatestartStr(String str) => startStr.value = str;
  void updaterestartStr(String str) => restartStr.value = str;
  void updatepleaseWaitStr(String str) => pleaseWaitStr.value = str;
  void updatestopStr(String str) => stopStr.value = str;
  void updatecloseStr(String str) => closeStr.value = str;
  void updateviewLogStr(String str) => viewLogStr.value = str;
  void updateaboutStr(String str) => aboutStr.value = str;
  void updatesettingsStr(String str) => settingsStr.value = str;
  void updatebrowserStr(String str) => browserStr.value = str;
  void updatelogStr(String str) => logStr.value = str;
  void updateupdateStr(String str) => updateStr.value = str;
  void updatedownloadingStr(String str) => downloadingStr.value = str;
  void updatedownloadedStr(String str) => downloadedStr.value = str;
  void updateinstallStr(String str) => installStr.value = str;
  void updaterestoreStr(String str) => restoreStr.value = str;
  void updateinstallingStr(String str) => installingStr.value = str;
  void updateinstallationCompletedStr(String str) =>
      installationCompletedStr.value = str;
  void updatenotAvaliableStr(String str) => notAvaliableStr.value = str;
  void updateaboutAppDesStr(String str) => aboutAppDesStr.value = str;
  void updateaboutAppDes1Str(String str) => aboutAppDes1Str.value = str;
  void updatedevelopersStr(String str) => developersStr.value = str;
  void updatedonationAddrsStr(String str) => donationAddrsStr.value = str;
  void updateclickAddrToCopyStr(String str) => clickAddrToCopyStr.value = str;
  void updatedonAddrCopiedStr(String str) => donAddrCopiedStr.value = str;
  void updatedonationDes(String str) => donationDes.value = str;
  void updatecontributeStr(String str) => contributeStr.value = str;
  void updatecontributeDesStr(String str) => contributeDesStr.value = str;
  void updategooglePurchasesStr(String str) => googlePurchasesStr.value = str;
  void updategoogleFeeWarningStr(String str) => googleFeeWarningStr.value = str;
  void updateoneTimeSubStr(String str) => oneTimeSubStr.value = str;
  void updatemonthlySubStr(String str) => monthlySubStr.value = str;
  void updatetipStr(String str) => tipStr.value = str;
  void updatecoffeeStr(String str) => coffeeStr.value = str;
  void updatelunchStr(String str) => lunchStr.value = str;
  void updateusersFileCopied(String str) => usersFileCopied.value = str;
  void updatechkBckUpStr(String str) => chkBckUpStr.value = str;
  void updatezeroNetNotInitTitleStr(String str) =>
      zeroNetNotInitTitleStr.value = str;
  void updatezeroNetNotInitDesStr(String str) =>
      zeroNetNotInitDesStr.value = str;
  void updateloadingStr(String str) => loadingStr.value = str;
  void updateswitchProfileToStr(String str) => switchProfileToStr.value = str;
  void updateswitchProfileToDesStr(String str) =>
      switchProfileToDesStr.value = str;
  void updatebackupStr(String str) => backupStr.value = str;
  void updateswitchStr(String str) => switchStr.value = str;
  void updateloadingPageWarningStr(String str) =>
      loadingPageWarningStr.value = str;
  void updateappUpdateAvailableStr(String str) =>
      appUpdateAvailableStr.value = str;
  void updateknowMoreStr(String str) => knowMoreStr.value = str;
  void updateratingWgtStr(String str) => ratingWgtStr.value = str;
  void updatesiteInfoStr(String str) => siteInfoStr.value = str;
  void updatebackupWarningStr(String str) => backupWarningStr.value = str;
  void updateusernameStr(String str) => usernameStr.value = str;
  void updateusernamePhraseStr(String str) => usernamePhraseStr.value = str;
  void updateusrnameWarning1Str(String str) => usrnameWarning1Str.value = str;
  void updateusrnameWarning2Str(String str) => usrnameWarning2Str.value = str;
  void updateusrnameWarning3Str(String str) => usrnameWarning3Str.value = str;
  void updateusrnameWarning4Str(String str) => usrnameWarning4Str.value = str;
  void updateznNotiRunningTitleStr(String str) =>
      znNotiRunningTitleStr.value = str;
  void updateznNotiRunningDesStr(String str) => znNotiRunningDesStr.value = str;
  void updateznNotiNotRunningTitleStr(String str) =>
      znNotiNotRunningTitleStr.value = str;
  void updateznNotiNotRunningDesStr(String str) =>
      znNotiNotRunningDesStr.value = str;
  void updateznPluginInstallingTitleStr(String str) =>
      znPluginInstallingTitleStr.value = str;
  void updateznPluginInstallingDesStr(String str) =>
      znPluginInstallingDesStr.value = str;
  void updatezninstallAPluginTitleStr(String str) =>
      zninstallAPluginTitleStr.value = str;
  void updatezninstallAPluginDesStr(String str) =>
      zninstallAPluginDesStr.value = str;
  void updaterestoreProfileTitleStr(String str) =>
      restoreProfileTitleStr.value = str;
  void updaterestoreProfileDesStr(String str) =>
      restoreProfileDesStr.value = str;
  void updaterestoreProfileDes1Str(String str) =>
      restoreProfileDesStr.value = str;
  void updateexistingProfileTitleStr(String str) =>
      existingProfileTitleStr.value = str;
  void updatecreateNewProfileStr(String str) => createNewProfileStr.value = str;
  void updateimportProfileStr(String str) => importProfileStr.value = str;
  void updatebackupProfileStr(String str) => backupProfileStr.value = str;
  void updateopenPluginManagerStr(String str) =>
      openPluginManagerStr.value = str;
  void updateloadPluginStr(String str) => loadPluginStr.value = str;
  void updatezerohelloSiteDesStr(String str) => zerohelloSiteDesStr.value = str;
  void updatezeronetMobileSiteDesStr(String str) =>
      zeronetMobileSiteDesStr.value = str;
  void updatezeroTalkSiteDesStr(String str) => zeroTalkSiteDesStr.value = str;
  void updatezeroblogSiteDesStr(String str) => zeroblogSiteDesStr.value = str;
  void updatezeromailSiteDesStr(String str) => zeromailSiteDesStr.value = str;
  void updatezeromeSiteDesStr(String str) => zeromeSiteDesStr.value = str;
  void updatezeroSitesSiteDesStr(String str) => zeroSitesSiteDesStr.value = str;
  void updatethemeSwitcherStr(String str) => themeSwitcherStr.value = str;
  void updatethemeSwitcherDesStr(String str) => themeSwitcherDesStr.value = str;
  void updatelanguageSwitcherStr(String str) => languageSwitcherStr.value = str;
  void updatelanguageSwitcherDesStr(String str) =>
      languageSwitcherDesStr.value = str;
  void updateprofileSwitcherStr(String str) => profileSwitcherStr.value = str;
  void updateprofileSwitcherDesStr(String str) =>
      profileSwitcherDesStr.value = str;
  void updatedebugZeroNetStr(String str) => debugZeroNetStr.value = str;
  void updatedebugZeroNetDesStr(String str) => debugZeroNetDesStr.value = str;
  void updateenableZeroNetConsoleStr(String str) =>
      enableZeroNetConsoleStr.value = str;
  void updateenableZeroNetConsoleDesStr(String str) =>
      enableZeroNetConsoleDesStr.value = str;
  void updateenableZeroNetFiltersStr(String str) =>
      enableZeroNetFiltersStr.value = str;
  void updateenableZeroNetFiltersDesStr(String str) =>
      enableZeroNetFiltersDesStr.value = str;
  void updateenableAdditionalTrackersStr(String str) =>
      enableAdditionalTrackersStr.value = str;
  void updateenableAdditionalTrackersDesStr(String str) =>
      enableAdditionalTrackersDesStr.value = str;
  void updatepluginManagerStr(String str) => pluginManagerStr.value = str;
  void updatepluginManagerDesStr(String str) => pluginManagerDesStr.value = str;
  void updatevibrateOnZeroNetStartStr(String str) =>
      vibrateOnZeroNetStartStr.value = str;
  void updatevibrateOnZeroNetStartDesStr(String str) =>
      vibrateOnZeroNetStartDesStr.value = str;
  void updateenableFullScreenOnWebViewStr(String str) =>
      enableFullScreenOnWebViewStr.value = str;
  void updateenableFullScreenOnWebViewDesStr(String str) =>
      enableFullScreenOnWebViewDesStr.value = str;
  void updatebatteryOptimisationStr(String str) =>
      batteryOptimisationStr.value = str;
  void updatebatteryOptimisationDesStr(String str) =>
      batteryOptimisationDesStr.value = str;
  void updatepublicDataFolderStr(String str) => publicDataFolderStr.value = str;
  void updatepublicDataFolderDesStr(String str) =>
      publicDataFolderDesStr.value = str;
  void updateautoStartZeroNetStr(String str) => autoStartZeroNetStr.value = str;
  void updateautoStartZeroNetDesStr(String str) =>
      autoStartZeroNetDesStr.value = str;
  void updateautoStartZeroNetonBootStr(String str) =>
      autoStartZeroNetonBootStr.value = str;
  void updateautoStartZeroNetonBootDesStr(String str) =>
      autoStartZeroNetonBootDesStr.value = str;
  void updateenableTorLogStr(String str) => enableTorLogStr.value = str;
  void updateenableTorLogDesStr(String str) => enableTorLogDesStr.value = str;
  void updateenableInternetAccessStr(String str) =>
      enableInternetAccessStr.value = str;
  void updateenableInternetAccessDesStr(String str) =>
      enableInternetAccessDesStr.value = str;
  void updateproFeatureTitleStr(String str) => proFeatureTitleStr.value = str;
  void updateproFeatureDesStr(String str) => proFeatureDesStr.value = str;

  void loadTranslationsFromFile(String path) {
    File translationsFile = File(path);
    String readAsStringSync = '';
    try {
      readAsStringSync = translationsFile.readAsStringSync();
    } catch (e) {
      if (e is FileSystemException) return;
    }
    Map map = json.decode(readAsStringSync);
    updatestatusStr(map['statusStr']);
    updateUserStatusStr(map['userStatusStr']);
    updateUserNameNotCreatedStr(map['userNameNotCreatedStr']);
    updateCreateUserIdFirstStr(map['createUserIdFirstStr']);
    updatestatusNotRunningStr(map['statusNotRunningStr']);
    updatestatusInitializingStr(map['statusInitializingStr']);
    updatestatusStartingStr(map['statusStartingStr']);
    updatestatusRunningStr(map['statusRunningStr']);
    updatestatusRunningWithTorStr(map['statusRunningWithTorStr']);
    updatestatusErrorStr(map['statusErrorStr']);
    updatepopularSitesStr(map['popularSitesStr']);
    updatestartZeroNetFirstStr(map['startZeroNetFirstStr']);
    updatecreateStr(map['createStr']);
    updateopenStr(map['openStr']);
    updatedownloadStr(map['downloadStr']);
    updateaddToHomeScreenStr(map['addToHomeScreenStr']);
    updateshowLogStr(map['showLogStr']);
    updatepauseStr(map['pauseStr']);
    updateresumeStr(map['resumeStr']);
    updatedeleteZiteStr(map['deleteZiteStr']);
    updateshrtAddedToHomeScreenStr(map['shrtAddedToHomeScreenStr']);
    updatestartStr(map['startStr']);
    updaterestartStr(map['restartStr']);
    updatepleaseWaitStr(map['pleaseWaitStr']);
    updatestopStr(map['stopStr']);
    updatecloseStr(map['closeStr']);
    updateviewLogStr(map['viewLogStr']);
    updateaboutStr(map['aboutStr']);
    updatesettingsStr(map['settingsStr']);
    updatebrowserStr(map['browserStr']);
    updatelogStr(map['logStr']);
    updateupdateStr(map['updateStr']);
    updatedownloadingStr(map['downloadingStr']);
    updatedownloadedStr(map['downloadedStr']);
    updateinstallStr(map['installStr']);
    updaterestoreStr(map['restoreStr']);
    updateinstallingStr(map['installingStr']);
    updateinstallationCompletedStr(map['installationCompletedStr']);
    updatenotAvaliableStr(map['notAvaliableStr']);
    updateaboutAppDesStr(map['aboutAppDesStr']);
    updateaboutAppDes1Str(map['aboutAppDes1Str']);
    updatedevelopersStr(map['developersStr']);
    updatedonationAddrsStr(map['donationAddrsStr']);
    updateclickAddrToCopyStr(map['clickAddrToCopyStr']);
    updatedonAddrCopiedStr(map['donAddrCopiedStr']);
    updatedonationDes(map['donationDes']);
    updatecontributeStr(map['contributeStr']);
    updatecontributeDesStr(map['contributeDesStr']);
    updategooglePurchasesStr(map['googlePurchasesStr']);
    updategoogleFeeWarningStr(map['googleFeeWarningStr']);
    updateoneTimeSubStr(map['oneTimeSubStr']);
    updatemonthlySubStr(map['monthlySubStr']);
    updatetipStr(map['tipStr']);
    updatecoffeeStr(map['coffeeStr']);
    updatelunchStr(map['lunchStr']);
    updateusersFileCopied(map['usersFileCopied']);
    updatechkBckUpStr(map['chkBckUpStr']);
    updatezeroNetNotInitTitleStr(map['zeroNetNotInitTitleStr']);
    updatezeroNetNotInitDesStr(map['zeroNetNotInitDesStr']);
    updateloadingStr(map['loadingStr']);
    updateswitchProfileToStr(map['switchProfileToStr']);
    updateswitchProfileToDesStr(map['switchProfileToDesStr']);
    updatebackupStr(map['backupStr']);
    updateswitchStr(map['switchStr']);
    updateloadingPageWarningStr(map['loadingPageWarningStr']);
    updateappUpdateAvailableStr(map['appUpdateAvailableStr']);
    updateknowMoreStr(map['knowMoreStr']);
    updateratingWgtStr(map['ratingWgtStr']);
    updatesiteInfoStr(map['siteInfoStr']);
    updatebackupWarningStr(map['backupWarningStr']);
    updateusernameStr(map['usernameStr']);
    updateusernamePhraseStr(map['usernamePhraseStr']);
    updateusrnameWarning1Str(map['usrnameWarning1Str']);
    updateusrnameWarning2Str(map['usrnameWarning2Str']);
    updateusrnameWarning3Str(map['usrnameWarning3Str']);
    updateusrnameWarning4Str(map['usrnameWarning4Str']);
    updateznNotiRunningTitleStr(map['znNotiRunningTitleStr']);
    updateznNotiRunningDesStr(map['znNotiRunningDesStr']);
    updateznNotiNotRunningTitleStr(map['znNotiNotRunningTitleStr']);
    updateznNotiNotRunningDesStr(map['znNotiNotRunningDesStr']);
    updateznPluginInstallingTitleStr(map['znPluginInstallingTitleStr']);
    updateznPluginInstallingDesStr(map['znPluginInstallingDesStr']);
    updatezninstallAPluginTitleStr(map['zninstallAPluginTitleStr']);
    updatezninstallAPluginDesStr(map['zninstallAPluginDesStr']);
    updaterestoreProfileTitleStr(map['restoreProfileTitleStr']);
    updaterestoreProfileDesStr(map['restoreProfileDesStr']);
    updaterestoreProfileDes1Str(map['restoreProfileDes1Str']);
    updateexistingProfileTitleStr(map['existingProfileTitleStr']);
    updatecreateNewProfileStr(map['createNewProfileStr']);
    updateimportProfileStr(map['importProfileStr']);
    updatebackupProfileStr(map['backupProfileStr']);
    updateopenPluginManagerStr(map['openPluginManagerStr']);
    updateloadPluginStr(map['loadPluginStr']);
    updatezerohelloSiteDesStr(map['zerohelloSiteDesStr']);
    updatezeronetMobileSiteDesStr(map['zeronetMobileSiteDesStr']);
    updatezeroTalkSiteDesStr(map['zeroTalkSiteDesStr']);
    updatezeroblogSiteDesStr(map['zeroblogSiteDesStr']);
    updatezeromailSiteDesStr(map['zeromailSiteDesStr']);
    updatezeromeSiteDesStr(map['zeromeSiteDesStr']);
    updatezeroSitesSiteDesStr(map['zeroSitesSiteDesStr']);
    updatethemeSwitcherStr(map['themeSwitcherStr']);
    updatethemeSwitcherDesStr(map['themeSwitcherDesStr']);
    updatelanguageSwitcherStr(map['languageSwitcherStr']);
    updatelanguageSwitcherDesStr(map['languageSwitcherDesStr']);
    updateprofileSwitcherStr(map['profileSwitcherStr']);
    updateprofileSwitcherDesStr(map['profileSwitcherDesStr']);
    updatedebugZeroNetStr(map['debugZeroNetStr']);
    updatedebugZeroNetDesStr(map['debugZeroNetDesStr']);
    updateenableZeroNetConsoleStr(map['enableZeroNetConsoleStr']);
    updateenableZeroNetConsoleDesStr(map['enableZeroNetConsoleDesStr']);
    updateenableZeroNetFiltersStr(map['enableZeroNetFiltersStr']);
    updateenableZeroNetFiltersDesStr(map['enableZeroNetFiltersDesStr']);
    updateenableAdditionalTrackersStr(map['enableAdditionalTrackersStr']);
    updateenableAdditionalTrackersDesStr(map['enableAdditionalTrackersDesStr']);
    updatepluginManagerStr(map['pluginManagerStr']);
    updatepluginManagerDesStr(map['pluginManagerDesStr']);
    updatevibrateOnZeroNetStartStr(map['vibrateOnZeroNetStartStr']);
    updatevibrateOnZeroNetStartDesStr(map['vibrateOnZeroNetStartDesStr']);
    updateenableFullScreenOnWebViewStr(map['enableFullScreenOnWebViewStr']);
    updateenableFullScreenOnWebViewDesStr(
        map['enableFullScreenOnWebViewDesStr']);
    updatebatteryOptimisationStr(map['batteryOptimisationStr']);
    updatebatteryOptimisationDesStr(map['batteryOptimisationDesStr']);
    updatepublicDataFolderStr(map['publicDataFolderStr']);
    updatepublicDataFolderDesStr(map['publicDataFolderDesStr']);
    updateautoStartZeroNetStr(map['autoStartZeroNetStr']);
    updateautoStartZeroNetDesStr(map['autoStartZeroNetDesStr']);
    updateautoStartZeroNetonBootStr(map['autoStartZeroNetonBootStr']);
    updateautoStartZeroNetonBootDesStr(map['autoStartZeroNetonBootDesStr']);
    updateenableTorLogStr(map['enableTorLogStr']);
    updateenableTorLogDesStr(map['enableTorLogDesStr']);
    updateenableInternetAccessStr(map['enableInternetAccessStr']);
    updateenableInternetAccessDesStr(map['enableInternetAccessDesStr']);
    updateproFeatureTitleStr(map['proFeatureTitleStr']);
    updateproFeatureDesStr(map['proFeatureDesStr']);
  }
}
