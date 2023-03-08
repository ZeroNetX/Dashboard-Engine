import '../imports.dart';

enum ZeroNetUserStatus {
  NOT_REGISTERED,
  REGISTERED,
}

extension ZeroNetUserStatusExt on ZeroNetUserStatus {
  get message {
    switch (this) {
      case ZeroNetUserStatus.NOT_REGISTERED:
        return strController.userNameNotCreatedStr.value;
      case ZeroNetUserStatus.REGISTERED:
        return siteUiController.zeroNetUserId.value;
      default:
    }
  }

  get actionText {
    switch (this) {
      case ZeroNetUserStatus.NOT_REGISTERED:
        return strController.createStr.value;
      case ZeroNetUserStatus.REGISTERED:
        return strController.switchStr.value;
      default:
    }
  }

  void onAction() {
    switch (this) {
      case ZeroNetUserStatus.NOT_REGISTERED:
        browserUrl = defZeroNetUrl + Utils.urlCryptoId;
        if (PlatformExt.isMobile) {
          siteUiController.updateCurrentAppRoute(AppRoute.ZeroBrowser);
        } else {
          launchUrl(Uri.parse(browserUrl));
        }
        break;
      case ZeroNetUserStatus.REGISTERED:
        MapOptions.CREATE_PROFILE.onClick(Get.context);
        break;
      default:
        return null;
    }
  }

  get actionBtnColor {
    switch (this) {
      case ZeroNetUserStatus.NOT_REGISTERED:
      case ZeroNetUserStatus.REGISTERED:
        return Color(0xFF52F7C5);
      default:
    }
  }

  get statusChipColor {
    switch (this) {
      case ZeroNetUserStatus.NOT_REGISTERED:
      case ZeroNetUserStatus.REGISTERED:
        return Color(0xFF5A53FF);
      default:
    }
  }
}

enum AppRoute {
  Home,
  Settings,
  ShortcutLoadingPage,
  ZeroBrowser,
  LogPage,
  AboutPage,
}

extension AppRouteExt on AppRoute {
  get title {
    switch (this) {
      case AppRoute.AboutPage:
        return strController.aboutStr.value;
      case AppRoute.Home:
        return 'ZeroNetX';
      case AppRoute.Settings:
        return strController.settingsStr.value;
      case AppRoute.ZeroBrowser:
        return 'Zero${strController.browserStr.value}';
      case AppRoute.LogPage:
        return 'ZeroNet ${strController.logStr.value}';
      default:
    }
  }

  IconData get icon {
    switch (this) {
      case AppRoute.AboutPage:
      case AppRoute.Settings:
      case AppRoute.ZeroBrowser:
      case AppRoute.LogPage:
        return OMIcons.home;
      case AppRoute.Home:
        return OMIcons.settings;
      default:
        return OMIcons.error;
    }
  }

  void onClick() {
    switch (siteUiController.currentAppRoute.value) {
      case AppRoute.Home:
        siteUiController.updateCurrentAppRoute(AppRoute.Settings);
        break;
      case AppRoute.AboutPage:
      case AppRoute.Settings:
      case AppRoute.LogPage:
      case AppRoute.ZeroBrowser:
        siteUiController.updateCurrentAppRoute(AppRoute.Home);
        break;
      default:
    }
  }
}

enum AppTheme {
  Light,
  Dark,
  Black,
}

extension AppThemeExt on AppTheme {
  get primaryColor {
    switch (this) {
      case AppTheme.Light:
        return Colors.white;
      case AppTheme.Dark:
        return Colors.grey[900];
      case AppTheme.Black:
        return Colors.black;
      default:
    }
  }

  get primaryTextColor {
    switch (this) {
      case AppTheme.Light:
        return Colors.black;
      case AppTheme.Dark:
      case AppTheme.Black:
        return Colors.white;
      default:
    }
  }

  get btnTextColor {
    switch (this) {
      case AppTheme.Light:
        return Colors.white;
      case AppTheme.Dark:
        return Colors.white;
      case AppTheme.Black:
        return Colors.white;
      default:
    }
  }

  get premiumOptionColor {
    switch (this) {
      case AppTheme.Light:
        return Color.fromARGB(248, 238, 211, 58);
      case AppTheme.Dark:
        return Color.fromARGB(248, 130, 115, 30);
      case AppTheme.Black:
        return Color.fromARGB(248, 130, 115, 30);
      default:
    }
  }

  get cardBgColor {
    switch (this) {
      case AppTheme.Light:
        return Colors.white;
      case AppTheme.Dark:
        return Colors.grey[850];
      case AppTheme.Black:
        return Colors.grey[900];
      default:
    }
  }

  get iconBrightness {
    switch (this) {
      case AppTheme.Light:
        return Brightness.dark;
      case AppTheme.Dark:
      case AppTheme.Black:
        return Brightness.light;
      default:
    }
  }

  get browserBgColor {
    switch (this) {
      case AppTheme.Light:
        return Color(0xFFEDF2F5);
      case AppTheme.Dark:
      case AppTheme.Black:
        return Color(0xFF22272d);
      default:
    }
  }

  get browserIconColor =>
      zeroBrowserTheme == 'light' ? Color(0xFF22272d) : Color(0xFFEDF2F5);

  get titleBarColor => this == AppTheme.Light ? Colors.white : Colors.grey[900];
}
