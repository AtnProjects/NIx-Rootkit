{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    chromium
  ];

  programs.chromium = {
    enable = true;
    extensions = [
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
      "fploionmjgeclbkemipmkogoaohcdbig" # Page load time
      "kglhbbefdnlheedjiejgomgmfplipfeb" # Jitsi Meetings
      "ghecgabfgfdldnmbfkhmffcabddioke"  # Volume Master
      "nngceckbapebfimnlniiiahkandclblb" # Bitwarden Manager
    ];
    extraOpts = {
      "PasswordManagerEnabled" = "false";
      "SpellcheckEnabled" = "true";
      "SpellcheckLanguage" = [
        "es-mx"
        "es"
      ];

    };
  };
}
