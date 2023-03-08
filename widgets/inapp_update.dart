import '../imports.dart';

class InAppUpdateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (uiStore.appUpdate.value != AppUpdate.NOT_AVAILABLE)
        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              strController.appUpdateAvailableStr.value,
              style: GoogleFonts.roboto(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: siteUiController.currentTheme.value.primaryTextColor,
              ),
            ),
            ElevatedButton(
              onPressed: uiStore.appUpdate.value.action,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF008297)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                padding: MaterialStateProperty.all(
                    EdgeInsets.only(left: 10, right: 10)),
              ),
              child: Obx(() {
                return Text(
                  uiStore.appUpdate.value.text,
                  style: GoogleFonts.roboto(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: siteUiController.currentTheme.value.btnTextColor,
                  ),
                );
              }),
            ),
          ],
        );
      return Container();
    });
  }
}
