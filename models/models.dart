import '../imports.dart';

abstract class Setting {
  String? name;
  String? description;
  bool? hidden = false;
  Setting({
    this.name,
    this.description,
    this.hidden,
  });

  Map toMap();

  String toJson();

  Setting fromJson(Map<String, dynamic> map);
}

class ToggleSetting extends Setting {
  String? name;
  String? description;
  bool? value;

  ToggleSetting({
    this.name,
    this.description,
    this.value,
    bool hidden = false,
  }) : super(
          name: name,
          description: description,
          hidden: hidden,
        );

  @override
  Map toMap() => {
        'name': name,
        'description': description,
        'value': value,
      };

  @override
  String toJson() => json.encode(this.toMap());

  ToggleSetting fromJson(Map<String, dynamic> map) {
    return ToggleSetting(
      name: map['name'],
      description: map['description'],
      value: map['value'],
    );
  }

  String toString() => json.encode(this.toMap());

  void onChanged(bool value) async {
    var map = siteUiController.settings;
    var key = this.name;
    (map[this.name] as ToggleSetting)..value = value;
    Map<String?, Setting?> m = {};
    map.keys.forEach((k) {
      m[k] = map[k];
    });
    if (key == batteryOptimisation && value) {
      final isOptimised = await isBatteryOptimised() ?? false;
      (m[key] as ToggleSetting)
        ..value =
            (!isOptimised) ? await askBatteryOptimisation() ?? false : true;
    } else if (key == publicDataFolder) {
      String str = 'data_dir = ${value ? appPrivDir!.path : zeroNetDir}/data';
      writeZeroNetConf(str);
    } else if (key == enableZeroNetFilters) {
      if (value) {
        activateFilters();
      } else {
        deactivateFilters();
      }
    }
    saveSettings(m);
    siteUiController.updateSetting(
      (map[key] as ToggleSetting)..value = (m[key] as ToggleSetting).value,
    );
  }
}

class MapSetting extends Setting {
  String? name;
  String? description;
  Map? map;
  List<MapOptions>? options;

  MapSetting({
    this.name,
    this.description,
    this.map,
    this.options,
  }) : super(
          name: name,
          description: description,
        );

  @override
  Map toMap() => {
        'name': name,
        'description': description,
        'map': map,
      };

  @override
  String toJson() => json.encode(this.toMap());

  MapSetting fromJson(Map<String, dynamic> map) {
    return MapSetting(
      name: map['name'],
      description: map['description'],
      map: map['map'],
    );
  }

  String toString() => json.encode(this.toMap());
}

class AppDeveloper extends Equatable {
  final String? name;
  final String? profileIconLink;
  final String? developerType;
  final String? githubLink;
  final String? facebookLink;
  final String? twitterLink;
  const AppDeveloper({
    this.name,
    this.profileIconLink,
    this.developerType,
    this.githubLink,
    this.facebookLink,
    this.twitterLink,
  });

  @override
  List<Object?> get props => [
        name,
        profileIconLink,
        developerType,
        githubLink,
        facebookLink,
        twitterLink,
      ];
}
