{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
    };

    initExtra = ''
      eval "$(starship init zsh)"
      eval "$(zoxide init zsh)"
      source <(fzf --zsh)
      bindkey -v
      ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=cyan'
    '';

    shellAliases = {
      cls = "clear";
      nb = "sudo nixos-rebuild switch --flake ~/nixos#dark";
      nx = "cd ~/nixos && nvim . && cd -";
      nv = "nvim";
      nivm = "nvim";
      cd = "z";
      sz = "source ~/.zshrc";
      nz = "nvim ~/.zshrc && sz";
      ls = "ls --color=auto";
      grep = "grep --color=auto";
      dark = "nvim output.txt -c 'vsplit main.cpp | wincmd l | split input.txt | wincmd h | vertical resize 120'";
    };

    history = {
      size =  10000;
    };
  };
}
