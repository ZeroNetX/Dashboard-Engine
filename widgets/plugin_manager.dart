import '../imports.dart';

class PluginManager extends StatefulWidget {
  const PluginManager({
    Key? key,
  }) : super(key: key);

  @override
  _PluginManagerState createState() => _PluginManagerState();
}

class _PluginManagerState extends State<PluginManager> {
  _reload() => this.mounted ? setState(() {}) : null;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> plugins = [];
    List<String> disabledPlugins = [];
    var pluginsPath = zeroNetDir + '/plugins/';
    Directory(pluginsPath).listSync().forEach((entity) {
      var pycacheDir = entity.path.endsWith('__pycache__');
      if (entity is Directory && !pycacheDir) {
        printOut(entity.path);
        String pluginName = entity.path.replaceAll(pluginsPath, '');
        if (pluginName.startsWith('disabled-')) {
          pluginName = pluginName.replaceAll('disabled-', '');
          disabledPlugins.add(pluginName);
        }
        plugins.insert(0, pluginName);
      }
    });
    plugins.sort();
    return Container(
      width: size.width,
      child: SingleChildScrollView(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: plugins.length,
          itemBuilder: (ctx, i) {
            final isDisabled = disabledPlugins.contains(plugins[i]);
            final pluginName = plugins[i];
            if (pluginName == 'MyDonationMessage') {
              if (!kisProUser) return Container();
            }
            return Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  pluginName,
                  style: TextStyle(
                    color: siteUiController.currentTheme.value.primaryTextColor,
                  ),
                ),
                Switch(
                  onChanged: (value) {
                    if (isDisabled)
                      Directory(pluginsPath + 'disabled-' + plugins[i])
                          .renameSync(pluginsPath + pluginName);
                    else
                      Directory(pluginsPath + plugins[i])
                          .renameSync(pluginsPath + 'disabled-' + plugins[i]);
                    _reload();
                  },
                  value: !isDisabled,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
