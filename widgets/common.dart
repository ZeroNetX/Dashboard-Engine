import '../imports.dart';

class ZeroNetAppBar extends StatelessWidget {
  const ZeroNetAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            siteUiController.currentAppRoute.value.title,
            style: GoogleFonts.roboto(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: siteUiController.currentTheme.value.primaryTextColor,
            ),
          ),
          Row(
            children: [
              if (siteUiController.currentAppRoute.value == AppRoute.Settings)
                InkWell(
                  child: Icon(
                    OMIcons.info,
                    size: 32.0,
                    color: siteUiController.currentTheme.value.primaryTextColor,
                  ),
                  onTap: () => siteUiController
                      .updateCurrentAppRoute(AppRoute.AboutPage),
                ),
              if (siteUiController.currentAppRoute.value == AppRoute.Settings)
                Padding(padding: const EdgeInsets.only(right: 20.0)),
              InkWell(
                child: Icon(
                  siteUiController.currentAppRoute.value.icon,
                  size: 32.0,
                  color: siteUiController.currentTheme.value.primaryTextColor,
                ),
                onTap: siteUiController.currentAppRoute.value.onClick,
              )
            ],
          )
        ],
      );
    });
  }
}

var username = '';
var errorText = '';
var validUsername = false;

class ProfileSwitcherUserNameEditText extends StatefulWidget {
  @override
  _ProfileSwitcherUserNameEditTextState createState() =>
      _ProfileSwitcherUserNameEditTextState();
}

class _ProfileSwitcherUserNameEditTextState
    extends State<ProfileSwitcherUserNameEditText> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    final usrName = getZeroIdUserName();
    _controller.text = usrName;
    if (usrName.isNotEmpty) {
      username = usrName;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: <Widget>[
        Text(
          strController.backupWarningStr.value,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        Text(
          strController.usernamePhraseStr.value,
          style: TextStyle(
            color: siteUiController.currentTheme.value.primaryTextColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: TextField(
            controller: _controller,
            onChanged: (text) {
              username = text;
              var valid = text.isNotEmpty;
              if (valid) {
                if (text.contains(' ')) {
                  errorText = strController.usrnameWarning2Str.value;
                  valid = false;
                } else if (text.length < 6) {
                  errorText = strController.usrnameWarning3Str.value;
                  valid = false;
                } else if (File(getZeroNetDataDir().path + '/users-$text.json')
                    .existsSync()) {
                  errorText = strController.usrnameWarning4Str.value;
                  valid = false;
                }
              } else {
                errorText = strController.usrnameWarning1Str.value;
              }
              setState(() {
                validUsername = valid;
              });
            },
            style: TextStyle(
              fontSize: 18.0,
              color: siteUiController.currentTheme.value.primaryTextColor,
            ),
            decoration: InputDecoration(
              hintText: strController.usernameStr.value.toLowerCase(),
              errorText: validUsername ? null : errorText,
              hintStyle: TextStyle(
                color: siteUiController.currentTheme.value.primaryTextColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ClickableTextWidget extends StatelessWidget {
  ClickableTextWidget({
    this.text,
    this.textStyle,
    this.onClick,
  });

  final String? text;
  final TextStyle? textStyle;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text,
        style: textStyle,
        recognizer: TapGestureRecognizer()..onTap = onClick,
      ),
    );
  }
}
