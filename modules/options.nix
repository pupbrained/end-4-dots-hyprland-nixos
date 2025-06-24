illogical-impulse-dotfiles: {lib, ...}:
with lib; let
in {
  options.illogical-impulse = {
    enable = mkEnableOption "Enable illogical-impulse";
  };
}
