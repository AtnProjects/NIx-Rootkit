
## Hosts

### `default/`

Host base, configuración mínima para entornos genéricos o pruebas.

### `rootkit/`

Host principal con entorno gráfico, gaming y virtualización.

- Contiene configuración del sistema, hardware, usuarios y variables.
- Incluye el repositorio Flathub para Flatpak.
- Carpeta `home/` donde se definen todas las aplicaciones y servicios instalados (declarativo, no Home Manager).
- Soporte para virtualización en `Host-desktop/`.

## Aplicaciones principales

Las aplicaciones están declaradas en `hosts/rootkit/home/home.nix` y cubren:

- Terminal y utilidades ASCII art (cowsay, fortune, cmatrix).
- Herramientas del sistema (htop, gparted, fastfetch).
- Drivers y aceleración gráfica (mesa, libva-utils).
- Red y sincronización (syncthing, localsend).
- Desarrollo (git, neovim, python39, jdk).
- Productividad (obsidian, libreoffice-qt, onlyoffice-bin).
- Comunicación (telegram-desktop, vesktop).
- Juegos (steam, clonehero).
- Android (android-tools, scrcpy).
- Multimedia (vlc, mpv, gimp, inkscape).
- Captura y streaming (flameshot, obs-studio).
- Educación (arduino-ide).
- Utilidades de arranque
-

![2025-05-26_01-41](https://github.com/user-attachments/assets/2990542d-0242-4462-a38c-c1a1d619a734)

![2025-05-26_01-45](https://github.com/user-attachments/assets/264173df-49d7-405f-aef3-3dcc07e94705)

![20250526_01h32m38s_grim](https://github.com/user-attachments/assets/ab1d3739-2df2-4430-8856-ab27dcaa3553)


