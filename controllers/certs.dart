part of 'controllers.dart';

class CertController extends GetxController {
  final certsAvailable = RxMap<String, Cert>();

  Future<void> getCertsAvailable() async {
    final res = await ZeroNet.instance.certListFuture();
    if (res.isMsg) {
      final list = res.message!.certList;
      for (final cert in list) {
        certsAvailable.addIf(
          !certsAvailable.keys.contains(cert.domain),
          cert.domain,
          cert,
        );
      }
    }
  }
}
