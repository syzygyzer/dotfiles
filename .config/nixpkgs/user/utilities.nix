#~/.config/nixpkgs/user/poprox-utilities.nix

{  config, pkgs, ... }:

{

  programs = {
    autorandr = {
      enable = true;
      profiles = {
        "work" = {
          fingerprint = {
            DP-1-2 = "00ffffffffffff001e6d2b77b2b803000a1d0104b55022789eca95a6554ea1260f50542108007140818081c0a9c0b300d1c081000101e77c70a0d0a0295030203a00204f3100001a9d6770a0d0a0225030203a00204f3100001a000000fd00383d1e5a20000a202020202020000000fc004c472048445220575148440a2001db02031f7123090607470103041012131f83010000e305c000e60605015952569f3d70a0d0a0155030203a00204f3100001a7e4800e0a0381f4040403a00204f310000180000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c";
            eDP-1-1 = "00ffffffffffff004d1046140000000022190104a52615780edf50a35435b5260f5054000000010101010101010101010101010101014dd000a0f0703e80302035007ed710000018a4a600a0f0703e803020350081d710000018000000fe00434b375437814c513137334431000000000002410328001200000b010a20200074";
          };
          config = {
            eDP-1-1 = {
              dpi = 255;
              enable = true;
              mode = "3840x2160";
              position = "3440x0";
              rate = "60.00";
            };
            DP-1-2 = {
              dpi = 100;
              enable = true;
              mode = "3440x1440";
              position = "0x0";
              rate = "60.00";
            };
          };
        };
      };
    };
  };
  home.packages = with pkgs; [
    #networking
    arp-scan
    google-cloud-sdk

    #overview
    htop

    #display
    autorandr
 
    #security
    #_1password

    #shelly things
    xclip

    #graphics
    graphviz   #programming language for graphs

    #jokes
    fortune

    unrar
  ];
}
