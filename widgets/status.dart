import '../imports.dart';

class ZeroNetStatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Text(
              strController.statusStr.value,
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: siteUiController.currentTheme.value.primaryTextColor,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Obx(
              () {
                return Chip(
                  label: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      uiStore.zeroNetStatus.value.message,
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: siteUiController.currentTheme.value.btnTextColor,
                      ),
                    ),
                  ),
                  backgroundColor: uiStore.zeroNetStatus.value.statusChipColor,
                );
              },
            ),
            Spacer(
              flex: 1,
            ),
            Obx(() {
              return InkWell(
                onTap: uiStore.zeroNetStatus.value.onAction,
                child: Chip(
                  elevation: 8.0,
                  label: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      uiStore.zeroNetStatus.value.actionText,
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: siteUiController.currentTheme.value.btnTextColor,
                      ),
                    ),
                  ),
                  backgroundColor: uiStore.zeroNetStatus.value.actionBtnColor,
                ),
              );
            }),
            if (uiStore.zeroNetStatus.value == ZeroNetStatus.ERROR)
              Spacer(
                flex: 1,
              ),
            if (uiStore.zeroNetStatus.value == ZeroNetStatus.ERROR)
              InkWell(
                onTap: ZeroNetStatus.NOT_RUNNING.onAction,
                child: Chip(
                  label: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      ZeroNetStatus.NOT_RUNNING.actionText,
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  backgroundColor: ZeroNetStatus.NOT_RUNNING.actionBtnColor,
                ),
              ),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ],
    );
  }
}

class ZeroNetUserStatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Text(
              strController.userStatusStr.value,
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: siteUiController.currentTheme.value.primaryTextColor,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Obx(
              () {
                return Chip(
                  label: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      siteUiController.zeroNetUserStatus.value.message,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: siteUiController.currentTheme.value.btnTextColor,
                      ),
                    ),
                  ),
                  backgroundColor:
                      siteUiController.zeroNetUserStatus.value.statusChipColor,
                );
              },
            ),
            if (uiStore.zeroNetStatus.value == ZeroNetStatus.RUNNING)
              Spacer(
                flex: 1,
              ),
            if (uiStore.zeroNetStatus.value == ZeroNetStatus.RUNNING)
              Obx(() {
                return InkWell(
                  onTap: siteUiController.zeroNetUserStatus.value.onAction,
                  child: Chip(
                    elevation: 8.0,
                    label: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        siteUiController.zeroNetUserStatus.value.actionText,
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color:
                              siteUiController.currentTheme.value.btnTextColor,
                        ),
                      ),
                    ),
                    backgroundColor:
                        siteUiController.zeroNetUserStatus.value.actionBtnColor,
                  ),
                );
              }),
            Spacer(
              flex: 6,
            ),
          ],
        ),
      ],
    );
  }
}
