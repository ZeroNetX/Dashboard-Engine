import '../imports.dart';
import 'package:purchases_flutter/purchases_flutter.dart' as purchases_flutter;

part 'sites.dart';
part 'certs.dart';
part 'ui.dart';
part 'purchases.dart';
part 'strings.dart';

final sitesController = Get.put(SitesController());
final certsController = Get.put(CertController());
final siteUiController = Get.put(SiteUiController());
final purchasesStore = Get.put(PurchaseController());
final strController = Get.put(StrController());
