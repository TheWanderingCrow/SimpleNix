{
    pkgs,
    config,
    ...
}: {
    environment.systemPackages = with pkgs; [
        # Basic utilitiess
        vim
        wget
        screen
        git
        curl
        tmux
        unar
        playerctl
        brightnessctl
        neofetch
        
        # Word processing
        hunspellDicts.en-us
        libreoffice
        hunspell

        # Audio control
        pavucontrol
        pulsemixer
        pulseaudio-ctl
        
        # Communication
        mattermost-desktop
        slack
        zoom-us
    ];
}
