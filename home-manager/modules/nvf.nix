{
  inputs,
  config,
  ...
}: let
  inherit (config.lib.stylix) colors;
in {

imports = [inputs.nvf.homeManagerModules.default];
programs.nvf = {
    enable = true;
    # your settings need to go into the settings attribute set
    # most settings are documented in the appendix
    settings = {
      vim.viAlias = false;
      vim.vimAlias = true;
      vim.lsp = {
        enable = true;
      };
    };
  };
}

