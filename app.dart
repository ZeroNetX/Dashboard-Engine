import 'package:zeronet/imports.dart';

import 'imports.dart';

class DashboardApp extends StatelessWidget {
  const DashboardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (firstTime) {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [
          SystemUiOverlay.top,
          SystemUiOverlay.bottom,
        ],
      );
      activateFilters();
      siteUiController.updateCurrentAppRoute(AppRoute.Settings);
      if (!isExecPermitted)
        makeExecHelper().then(
          (value) => isExecPermitted = value,
        );
      if (zeroNetNativeDir!.isNotEmpty) saveDataFile();
      // createTorDataDir();
      firstTime = false;
    }
    if (uiStore.zeroNetStatus.value == ZeroNetStatus.NOT_RUNNING &&
        !manuallyStoppedZeroNet) {
      checkInitStatus();
    }
    if (launchUrlString!.isNotEmpty) {
      browserUrl =
          (zeroNetUrl.isEmpty ? defZeroNetUrl : zeroNetUrl) + launchUrlString!;
      if (uiStore.zeroNetStatus.value == ZeroNetStatus.RUNNING) {
        siteUiController.updateCurrentAppRoute(AppRoute.ZeroBrowser);
      } else
        siteUiController.updateCurrentAppRoute(AppRoute.ShortcutLoadingPage);
    }
    return Obx(
      () {
        setSystemUiTheme();
        switch (siteUiController.currentAppRoute.value) {
          case AppRoute.AboutPage:
            return WillPopScope(
              onWillPop: () {
                if (fromBrowser) {
                  fromBrowser = false;
                  //TODO! Replace with Updated WebView
                  // flutterWebViewPlugin.canGoBack().then(
                  //       (value) => value ? flutterWebViewPlugin.goBack() : null,
                  //     );
                  siteUiController.updateCurrentAppRoute(AppRoute.ZeroBrowser);
                } else
                  siteUiController.updateCurrentAppRoute(AppRoute.Home);
                return Future.value(false);
              },
              child: AboutPage(),
            );
          case AppRoute.Home:
            if (PlatformExt.isMobile && kReleaseMode) getInAppPurchases();
            return HomePage();
          case AppRoute.Settings:
            return WillPopScope(
              onWillPop: () {
                siteUiController.updateCurrentAppRoute(AppRoute.Home);
                return Future.value(false);
              },
              child: SettingsPage(),
            );
          case AppRoute.ShortcutLoadingPage:
            return ShortcutLoadingPage();
          case AppRoute.ZeroBrowser:
            // setZeroBrowserThemeValues();
            return ZeroBrowser();
          case AppRoute.LogPage:
            return WillPopScope(
              onWillPop: () {
                siteUiController.updateCurrentAppRoute(AppRoute.Home);
                return Future.value(false);
              },
              child: ZeroNetLogPage(),
            );
          default:
            return Container();
        }
      },
    );
  }
}
