{ config, pkgs, ... }:
{
  #pro:grams main
  programs = {
  firefox.enable = true;
  #obs-studio.enable = true;
  };
  
  # system pakages
  environment.systemPackages = with pkgs; [
    # Sddm theme config
    (pkgs.sddm-astronaut.override {
     embeddedTheme = "pixel_sakura";
        themeConfig = {
        };
    })
    kdePackages.qtmultimedia
    libva-utils
    #pkgs.openjdk21
    #steam-run
   ];
    
   # Home packages
   home-manager.users.aryu = { pkgs, ... }: {	
	home.stateVersion = "26.05";
	home.packages = with pkgs; [
		bat
		ani-cli
		tldr
		git
		cmatrix
		vlc
		htop
		tree
		#pkgs.vesktop
		#kdePackages.kdenlive
	    ]; 
    };  
  # Ignore warning
  nix.extraOptions = '' warn-dirty = false '';
}
