inputs: {
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.illogical-impulse;
  selfPkgs = import ../pkgs {
    inherit pkgs;
  };
in {
  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      cava
      lxqt.pavucontrol-qt
      wireplumber
      libdbusmenu-gtk3
      playerctl

      brightnessctl
      ddcutil

      xdg-user-dirs

      adw-gtk3
      eza
      python313Packages.kde-material-you-colors
      material-symbols
      rubik
      inputs.nur.legacyPackages."${system}".repos.skiletro.gabarito
      selfPkgs.illogical-impulse-oneui4-icons
      wl-clipboard

      kdePackages.bluedevil
      gnome-keyring
      kdePackages.plasma-nm
      kdePackages.polkit-kde-agent-1

      swappy
      wf-recorder
      hyprshot
      tesseract
      slurp

      upower
      wtype
      ydotool

      glib
      swww
      translate-shell
      wlogout
    ];

    services.gammastep.enable = true;
    services.gammastep.provider = "geoclue2";
    services.network-manager-applet.enable = true;
  };
}
