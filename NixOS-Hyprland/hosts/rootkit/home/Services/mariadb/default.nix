networking.firewall.allowedTCPPorts = [ 80 443  ];

 services.httpd.enable = true;
 services.httpd.adminAddr = "admin@website.org";
 services.httpd.enablePHP = true;

 services.httpd.virtualHosts."nixos.org" = {

 documentRoot = "/var/www/nixos.org";

 };

 services.mysql.enable = true;
 services.mysql.package = pkgs.mariadb;
