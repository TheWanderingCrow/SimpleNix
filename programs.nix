{
    pkgs,
    config,
    ...
}: {
    environment.systemPackages = with pkgs; [
        vim
        wget
        screen
        git
        curl
        tmux
        unar
        hunspellDicts.en-us
        libreoffice
        hunspell
        pavucontrol
        pulsemixer
        mattermost-desktop
        slack
        zoom-us
        neofetch
        pulseaudio-ctl
        playerctl
        brightnessctl
    ];
}
