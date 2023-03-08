import '../imports.dart';

class SiteDetailsSheet extends StatelessWidget {
  SiteDetailsSheet(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    List<SiteInfo> sites = sitesController.sitesAvailable.values
        .where((element) => element == Utils.initialSites[name]!['btcAddress'])
        .toList();
    SiteInfo? currentSite;
    if (sites.isNotEmpty) {
      currentSite = sites.first;
      siteUiController.updateCurrentSiteInfo(currentSite);
    }
    bool isZiteExists = isZiteExitsLocally(
      Utils.initialSites[name]!['btcAddress'],
    );
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SiteDetailHeader(name: name, isZiteExists: isZiteExists),
            Padding(padding: EdgeInsets.all(6.0)),
            Text(
              Utils.initialSites[name]!['description']!,
              style: GoogleFonts.roboto(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: siteUiController.currentTheme.value.primaryTextColor,
              ),
            ),
            Padding(padding: EdgeInsets.all(6.0)),
            Wrap(
              spacing: 16.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                if (Platform.isAndroid)
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF008297)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      File logoFile = File(getZeroNetDataDir().path +
                          "/${Utils.initialSites[name]!['btcAddress']}/img/logo.png");
                      String logoPath = '';
                      if (logoFile.existsSync()) {
                        logoPath = logoFile.path;
                      } else {
                        //TODO: Default logo quality is very low, use inbuilt logo for this.
                      }
                      var added = await addToHomeScreen(
                            name,
                            Utils.initialSites[name]!['url'],
                            logoPath,
                          ) ??
                          false;
                      if (added) {
                        snackMessage =
                            '$name ${strController.shrtAddedToHomeScreenStr.value}';
                        uiStore.updateShowSnackReply(true);
                      }
                    },
                    child: Text(
                      strController.addToHomeScreenStr.value,
                      maxLines: 1,
                      style: GoogleFonts.roboto(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300,
                        color: siteUiController.currentTheme.value.btnTextColor,
                      ),
                    ),
                  ),
                if (currentSite != null && isZiteExists)
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF517184)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      uiStore.currentBottomSheetController.close();
                      siteUiController.updateCurrentAppRoute(AppRoute.LogPage);
                    },
                    child: Text(
                      strController.showLogStr.value,
                      maxLines: 1,
                      style: GoogleFonts.roboto(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300,
                        color: siteUiController.currentTheme.value.btnTextColor,
                      ),
                    ),
                  ),
                if (!unImplementedFeatures.contains(Feature.SITE_PAUSE_RESUME))
                  if (isZiteExists)
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF009793)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        //TODO: Implement this function;
                        // currentSite = currentSite.settings.serving
                        //     ? currentSite.pause()
                        //     : currentSite.resume();
                        // sitesAvailable[currentSite!.address] = currentSite;
                        // SiteManager().saveSettingstoFile(
                        //     File(getZeroNetDataDir().path + '/sites.json'),
                        //     sitesAvailable);
                      },
                      child: Text(
                        currentSite?.settings.serving ?? false
                            ? strController.pauseStr.value
                            : strController.resumeStr.value,
                        maxLines: 1,
                        style: GoogleFonts.roboto(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                          color:
                              siteUiController.currentTheme.value.btnTextColor,
                        ),
                      ),
                    ),
                if (!unImplementedFeatures.contains(Feature.SITE_DELETE))
                  if (isZiteExists && currentSite != null)
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFFBB4848),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      onPressed: () {
                        //TODO: Implement this function;
                      },
                      child: Text(
                        strController.deleteZiteStr.value,
                        maxLines: 1,
                        style: GoogleFonts.roboto(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                          color:
                              siteUiController.currentTheme.value.btnTextColor,
                        ),
                      ),
                    ),
              ],
            ),
            Padding(padding: EdgeInsets.all(6.0)),
            if (currentSite != null && isZiteExists)
              Obx(() {
                return SiteInfoWidget(
                  siteUiController.currentSiteInfo.value!,
                );
              }),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Obx(() {
            Timer(Duration(seconds: 3), () {
              uiStore.updateShowSnackReply(false);
            });
            return uiStore.showSnackReply.value
                ? Container(
                    height: 50.0,
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          snackMessage,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                : Container();
          }),
        ),
      ],
    );
  }
}

class SiteDetailHeader extends StatelessWidget {
  const SiteDetailHeader({
    Key? key,
    required this.name,
    required this.isZiteExists,
  }) : super(key: key);

  final String name;
  final bool isZiteExists;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: GoogleFonts.roboto(
              fontSize: 31.0,
              fontWeight: FontWeight.w500,
              color: siteUiController.currentTheme.value.primaryTextColor,
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.share,
                color: Color(0xFF5A53FF),
              ),
              onPressed: () => Share.share(
                Utils.initialSites[name]!['url']!,
              ),
            ),
            Obx(() {
              final isZNRunning =
                  uiStore.zeroNetStatus.value != ZeroNetStatus.NOT_RUNNING;
              return ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xFF009764),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                onPressed: () {
                  if (!isZNRunning) {
                    snackMessage = strController.startZeroNetFirstStr.value;
                    uiStore.updateShowSnackReply(true);
                  } else {
                    browserUrl = zeroNetUrl + Utils.initialSites[name]!['url']!;
                    uiStore.currentBottomSheetController.close();
                    if (Platform.isAndroid) {
                      siteUiController.updateCurrentAppRoute(
                        AppRoute.ZeroBrowser,
                      );
                    } else {
                      launchUrl(Uri.parse(browserUrl));
                    }
                  }
                },
                child: Text(
                  isZiteExists
                      ? strController.openStr.value
                      : strController.downloadStr.value,
                  maxLines: 1,
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: siteUiController.currentTheme.value.btnTextColor,
                  ),
                ),
              );
            }),
          ],
        )
      ],
    );
  }
}
