{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        esbenp.prettier-vscode
        dbaeumer.vscode-eslint
        dracula-theme.theme-dracula
        ms-python.python
        rust-lang.rust-analyzer
        ms-vscode.cpptools
        ms-azuretools.vscode-docker
        eamodio.gitlens
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "LiveServer";
          publisher = "ritwickdey";
          version = "5.7.9";
          sha256 = "c3409848439d96dc0c1739b96613b14abc6a435cb8fa02df07c2fe105160cc37";
        }
      ];
    })
  ];
}
