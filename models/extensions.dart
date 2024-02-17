import 'package:zeronet/imports.dart';

import '../controllers/controllers.dart' as dashboard;
import '../imports.dart' hide strController;

extension ZeroNetStatusExt on ZeroNetStatus {
  get message {
    switch (this) {
      case ZeroNetStatus.NOT_RUNNING:
        return strController.statusNotRunningStr.value;
      case ZeroNetStatus.INITIALISING:
        return strController.statusInitializingStr.value;
      case ZeroNetStatus.RUNNING:
        return strController.statusRunningStr.value;
      case ZeroNetStatus.RUNNING_WITH_TOR:
        return strController.statusRunningWithTorStr.value;
      case ZeroNetStatus.ERROR:
        return strController.statusErrorStr.value;
      default:
    }
  }

  get actionText {
    switch (this) {
      case ZeroNetStatus.NOT_RUNNING:
        return strController.startStr.value;
      case ZeroNetStatus.INITIALISING:
        return strController.pleaseWaitStr.value;
      case ZeroNetStatus.RUNNING:
      case ZeroNetStatus.RUNNING_WITH_TOR:
        return strController.stopStr.value;
      case ZeroNetStatus.ERROR:
        return strController.viewLogStr.value;
      default:
    }
  }

  void onAction() {
    switch (this) {
      case ZeroNetStatus.NOT_RUNNING:
        printOut('onAction()');
        printOut('ZeroNetStatus.NOT_RUNNING');
        if (PlatformExt.isMobile && !patchChecked && checkPatchNeeded()) {
          var zeroNetRevision = getZeroNetRevision(zeroNetDir);
          downloadPatch('$zeroNetRevision').then((_) {
            checkPatchAndApply(
              tempDir!.path + '/patches/$zeroNetRevision',
              zeronetDir,
            );
          });
          patchChecked = true;
        }
        var autoStart = (dashboard.siteUiController.settings[autoStartZeroNet]
                as ToggleSetting)
            .value!;
        runZeroNetService(autoStart: autoStart);
        break;
      case ZeroNetStatus.RUNNING:
      case ZeroNetStatus.RUNNING_WITH_TOR:
        shutDownZeronet();
        // if (PlatformExt.isMobile()) flutterWebViewPlugin.close();
        // FlutterBackgroundService().stopBackgroundService();
        manuallyStoppedZeroNet = true;
        isInitialised = false;
        break;
      case ZeroNetStatus.ERROR:
        dashboard.siteUiController.updateCurrentAppRoute(AppRoute.LogPage);
        break;
      default:
        return null;
    }
  }

  get actionBtnColor {
    switch (this) {
      case ZeroNetStatus.NOT_RUNNING:
        return Color(0xFF52F7C5);
      case ZeroNetStatus.INITIALISING:
        return Color(0xFF5A53FF);
      case ZeroNetStatus.RUNNING:
      case ZeroNetStatus.RUNNING_WITH_TOR:
        return Color(0xFFF6595F);
      case ZeroNetStatus.ERROR:
        return Color(0xFF5A53FF);
      default:
    }
  }

  get statusChipColor {
    switch (this) {
      case ZeroNetStatus.NOT_RUNNING:
        return Color(0xFFF6595F);
      case ZeroNetStatus.INITIALISING:
        return Color(0xFF5A53FF);
      case ZeroNetStatus.RUNNING:
      case ZeroNetStatus.RUNNING_WITH_TOR:
        return Color(0xFF52F7C5);
      case ZeroNetStatus.ERROR:
        return Color(0xFFF6595F);
      default:
    }
  }
}
