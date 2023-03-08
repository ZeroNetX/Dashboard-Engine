import '../imports.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (restartNeeded && PlatformExt.isMobile) {
      Restart.restartApp();
    }
    return Container(
      height: MediaQuery.of(context).size.height,
      color: siteUiController.currentTheme.value.primaryColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(PlatformExt.isMobile ? 24 : 8)),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Column(
                children: <Widget>[
                  ZeroNetAppBar(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                  ),
                  ZeroNetStatusWidget(),
                  if (PlatformExt.isDesktop) SizedBox(height: 8),
                  ZeroNetUserStatusWidget(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                  ),
                  PopularZeroNetSites(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  InAppUpdateWidget(),
                  if (kIsPlayStoreInstall ?? false)
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                    ),
                  if (kIsPlayStoreInstall ?? false) FeedbackWidget(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                  ),
                  AboutButtonWidget(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
