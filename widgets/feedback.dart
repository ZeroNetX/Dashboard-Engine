import '../imports.dart';

class FeedbackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final InAppReview inAppReview = InAppReview.instance;
        //TODO: remove this once we support non playstore reviews.
        if (await inAppReview.isAvailable() && (kIsPlayStoreInstall ?? false)) {
          inAppReview.requestReview();
        } else {
          //TODO: Handle this case. eg: Non-PlayStore Install, Already Reviewed Users etc.
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFF008297)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        padding: MaterialStateProperty.all(
            EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30)),
      ),
      child: Text(
        strController.ratingWgtStr.value,
        style: GoogleFonts.roboto(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: siteUiController.currentTheme.value.btnTextColor,
        ),
      ),
    );
  }
}
