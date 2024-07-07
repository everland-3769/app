class ConstConf {
  static const String appVersion = "2.11.3";
  static const int appVersionCode = 53;
  static const String appVersionDate = "2024-6-28";
  static const gameChannels = ["LIVE", "PTU", "EPTU", "TECH-PREVIEW"];
  static const isMSE =
      String.fromEnvironment("MSE", defaultValue: "false") == "true";
}
