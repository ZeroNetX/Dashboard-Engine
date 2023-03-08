import '../imports.dart';

class AboutButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>
          siteUiController.updateCurrentAppRoute(AppRoute.AboutPage),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFAA5297)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        padding: MaterialStateProperty.all(
            EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30)),
      ),
      child: Text(
        strController.knowMoreStr.value,
        style: GoogleFonts.roboto(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: siteUiController.currentTheme.value.btnTextColor,
        ),
      ),
    );
  }
}
