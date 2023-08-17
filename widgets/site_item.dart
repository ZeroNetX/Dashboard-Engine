import '../imports.dart';

class SiteItemWidget extends StatelessWidget {
  const SiteItemWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    bool isZiteExists = isZiteExitsLocally(
      Utils.initialSites[name]!['btcAddress'],
    );
    return Card(
      shadowColor: Color(0x52000000),
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      color: siteUiController.currentTheme.value.cardBgColor,
      margin: EdgeInsets.only(bottom: 14.0),
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
            right: 16.5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    name,
                    maxLines: 1,
                    style: GoogleFonts.roboto(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color:
                          siteUiController.currentTheme.value.primaryTextColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.info_outline,
                      size: 28,
                      color: Color(0xFF5A53FF),
                    ),
                    onPressed: () {
                      uiStore.currentBottomSheetController = showBottomSheet(
                        context: context,
                        backgroundColor:
                            siteUiController.currentTheme.value.primaryColor,
                        elevation: 16.0,
                        builder: (ctx) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: siteUiController
                                  .currentTheme.value.cardBgColor,
                            ),
                            constraints: BoxConstraints(
                              minHeight: 300.0,
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                ),
                                Container(
                                  height: 5.0,
                                  width: 80.0,
                                  margin: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF5A53FF),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: SiteDetailsSheet(name),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                  InkWell(
                    child: Icon(
                      isZiteExists ? Icons.play_arrow : Icons.file_download,
                      size: 36,
                      color: Color(isZiteExists ? 0xFF6EB69E : 0xDF6EB69E),
                    ),
                    onTap: uiStore.zeroNetStatus.value ==
                            ZeroNetStatus.NOT_RUNNING
                        ? () {
                            Get.showSnackbar(
                              GetSnackBar(
                                message:
                                    strController.startZeroNetFirstStr.value,
                              ),
                            );
                          }
                        : () async {
                            var url = zeroNetUrl;
                            if (url.isEmpty) {
                              var isServiceRunning =
                                  await FlutterBackgroundService().isRunning();
                              if (isServiceRunning) {
                                url = defZeroNetUrl;
                              }
                            }
                            browserUrl =
                                url + Utils.initialSites[name]!['url']!;
                            if (PlatformExt.isMobile) {
                              siteUiController.updateCurrentAppRoute(
                                AppRoute.ZeroBrowser,
                              );
                            } else
                              launchUrl(Uri.parse(browserUrl));
                          },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
