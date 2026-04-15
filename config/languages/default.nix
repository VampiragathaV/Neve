{
  lib,
  config,
  ...
}:
{
  imports = [
    ./jdtls.nix
    ./nvim-lint.nix
  ];

  options = {
    languages.enable = lib.mkEnableOption "Enable languages module";
  };
  config = lib.mkIf config.languages.enable {
    jdtls.enable = lib.mkDefault true;
    nvim-lint.enable = lib.mkDefault true;
  };
}
