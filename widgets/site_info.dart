import '../imports.dart';

class SiteInfoWidget extends StatelessWidget {
  final SiteInfo siteInfo;
  const SiteInfoWidget(this.siteInfo);
  @override
  Widget build(BuildContext context) {
    List<Widget> infoTitleWgts = [];
    List<Widget> infoWgts = [];
    for (var item in siteInfo.propStrings..remove('files')) {
      final i = siteInfo.propStrings.indexOf(item);
      infoTitleWgts.add(
        Text(
          siteInfo.propStrings[i].inCaps,
          style: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: siteUiController.currentTheme.value.primaryTextColor,
          ),
        ),
      );
      if (siteInfo.props[i] != null) {
        String details = (siteInfo.props[i] is DateTime)
            ? format(siteInfo.props[i] as DateTime)
            : siteInfo.props[i].toString();
        if (item == 'size') {
          details = ((siteInfo.props[i] as int) ~/ 1000).toString() +
                  ' KB ($details Bytes)'
              //TODO : Enable this when we read sites content.json file.
              // +' (' +
              // siteInfo.props[siteInfo.propStrings.indexOf('files')].toString() +
              // ' Files)'
              ;
        } else if (siteInfo.props[i] is DateTime) {
          DateTime t = siteInfo.props[i] as DateTime;
          details = details + ' (${t.day}/${t.month}/${t.year})';
        }
        infoWgts.add(
          Text(
            '  :  ' + details,
            style: GoogleFonts.roboto(
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              color: siteUiController.currentTheme.value.primaryTextColor,
            ),
          ),
        );
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          strController.siteInfoStr.value,
          style: GoogleFonts.roboto(
            fontSize: 21.0,
            fontWeight: FontWeight.w500,
            color: siteUiController.currentTheme.value.primaryTextColor,
          ),
        ),
        Padding(padding: EdgeInsets.all(2.0)),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: []..addAll(infoTitleWgts),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: []..addAll(infoWgts),
            ),
          ],
        )
      ],
    );
  }
}

extension SiteInfoExt on SiteInfo {
  List<Object?> get props => [
        address,
        peers,
        settings.serving,
        settings.size,
        settings.added,
        settings.modified,
        settings.downloaded,
      ];

  List<String> get propStrings => [
        'address',
        'peers',
        'serving',
        'size',
        'siteAdded',
        'siteModified',
        'siteCodeUpdated',
      ];
}
