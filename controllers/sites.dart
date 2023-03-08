part of 'controllers.dart';

class SitesController extends GetxController {
  final sitesAvailable = RxMap<String, SiteInfo>();

  Future<void> getSitesAvailable() async {
    final res = await ZeroNet.instance.siteListFuture();
    if (res.isMsg) {
      final list = res.message!.siteList;
      for (final site in list) {
        sitesAvailable.addIf(
          !sitesAvailable.keys.contains(site.address),
          site.address,
          site,
        );
      }
    }
  }
}
