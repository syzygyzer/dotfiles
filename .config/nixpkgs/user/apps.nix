{  config, pkgs, ... }:

{
  home.packages = with pkgs; [
    discord   #done with overlay
    monero-gui
    qbittorrent
    slack
    spotify
    steam
    vlc
  ];

  ####################################################################################################
  # systemd.user = {                                                                                 #
  #   services = {                                                                                   #
  #     dropbox = {                                                                                  #
  #       Unit = {                                                                                   #
  #         Description = "Dropbox";                                                                 #
  #         After = [ "graphical-session-pre.target" ];                                              #
  #         PartOf = [ "graphical-session.target" ];                                                 #
  #       };                                                                                         #
  #       Service = {                                                                                #
  #         Restart = "on-failure";                                                                  #
  #         RestartSec = 1;                                                                          #
  #         ExecStart = "${pkgs.dropbox}/bin/dropbox";                                               #
  #         Environment = "QT_PLUGIN_PATH=/run/current-system/sw/${pkgs.qt5.qtbase.qtPluginPrefix}"; #
  #       };                                                                                         #
  #       Install = {                                                                                #
  #         WantedBy = [ "graphical-session.target" ];                                               #
  #       };                                                                                         #
  #     };                                                                                           #
  ####################################################################################################
}
