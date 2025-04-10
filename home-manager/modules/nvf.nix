{
  inputs,
  ...
}: 
  
{

imports = [inputs.nvf.homeManagerModules.default];
programs.nvf = {
    enable = true;
    settings.vim = {
      viAlias = false;
      vimAlias = true;
      options = {
        tabstop = 2;
        shiftwidth = 2;
        softtabstop = 2;
        expandtab = false;
      };
      lsp = {
        formatOnSave = false;
        trouble.enable = true;
        lspSignature.enable = true;
      };
			
      statusline.lualine.enable = true;
      telescope.enable = true;
      autocomplete.nvim-cmp.enable = true;
			autopairs.nvim-autopairs.enable = true;
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
						
#  theme = {
#    enable = false;
#    name = "nord";
#    style = "dark";
#  };
#
    ui = {
        borders.enable = true;
        noice.enable = true;
        illuminate.enable = true;
        modes-nvim.enable = false;
        fastaction.enable = true;
        breadcrumbs = {
          enable = true;
          navbuddy.enable = true;
        };
      };
    terminal = {
        toggleterm = {
          enable = true;
          lazygit.enable = true;
        };
      };
    };
  };
}

