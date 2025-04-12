{ config, pkgs, ... }:

let
  vscodiumWithExtensions = pkgs.vscodium.override {
    isFhs = true;
    vscodeExtensions = with pkgs.vscode-extensions; [
      # Lista de tus extensiones aquí
      bbenoist.nix
      ms-python.python
      ms-azuretools.vscode-docker
      ms-vscode-remote.remote-ssh
    ];
  };
in
{
  environment.systemPackages = with pkgs; [
    vscodiumWithExtensions
  ];

  environment.variables.JAVA_HOME = "${pkgs.jdk11}/lib/openjdk";
}
