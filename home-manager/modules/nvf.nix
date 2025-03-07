{
  inputs,
  ...
}: 
  
{

imports = [inputs.nvf.homeManagerModules.default];
programs.nvf = {
    enable = true;
    # your settings need to go into the settings attribute set
    # most settings are documented in the appendix
    settings.vim = {
      viAlias = false;
      vimAlias = true;
      dashboard = {startify.enable = true;};

      lsp = {
        formatOnSave = true;
        trouble.enable = true;
        lspSignature.enable = true;
        lsplines.enable = true; 
      };

      statusline.lualine.enable = true;
      telescope.enable = true;
      autocomplete.nvim-cmp.enable = true;
      filetree = {nvimTree = {enable = true;};};
      tabline = {nvimBufferline.enable = true;};
      
      binds = {
        whichKey.enable = true;
        cheatsheet.enable = true;
      };

    languages = {
      enableLSP = true;
      enableTreesitter = true;

      nix.enable = true;
      markdown.enable = true;
      python.enable = true;
     };

    visuals = {
      nvim-web-devicons.enable = true;
      highlight-undo.enable = true;
      fidget-nvim.enable = true;
     };


      ui = {
        borders.enable = true;
        noice.enable = true;
        colorizer.enable = true;
        illuminate.enable = true;
        modes-nvim.enable = false;
        fastaction.enable = true;
        breadcrumbs = {
          enable = true;
          navbuddy.enable = true;
        };
      };

    };
  };
}

