import '../imports.dart';

class PopularZeroNetSites extends StatelessWidget {
  const PopularZeroNetSites({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> zeroSites = [];
    List<String> siteKeys = Utils.initialSites.keys.toList();
    if (isLocalZitesExists()) {
      siteKeys.sort((item1, item2) {
        bool isZite1Exists = isZiteExitsLocally(
          Utils.initialSites[item1]!['btcAddress'],
        );
        return isZite1Exists ? 0 : 1;
      });
    }
    for (var key in siteKeys) {
      var name = key;
      zeroSites.add(SiteItemWidget(name: name));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: [
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    strController.popularSitesStr.value,
                    style: GoogleFonts.roboto(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color:
                          siteUiController.currentTheme.value.primaryTextColor,
                    ),
                  ),
                ),
                Container(
                  height: 3,
                  width: 120,
                  color: Color(0xFF2B2BFF),
                )
              ],
            ),
          ],
        ),
        if (PlatformExt.isDesktop)
          SizedBox(
            height: 10,
          ),
        ListView(
          shrinkWrap: true,
          children: zeroSites,
          physics: BouncingScrollPhysics(),
        )
        // wgt,
      ],
    );
  }
}
