{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    ##########################
    # Terminal Fun & ASCII Art
    ##########################
    cowsay                   # Animal parlante con frases graciosas
    fortune                  # Frases aleatorias (ideal junto a cowsay)
    toilet                   # Texto en arte ASCII estilizado
    figlet                   # Texto grande en ASCII
    ponysay                 # Versión pony de cowsay
    cmatrix                  # Efecto Matrix en la terminal
    nyancat                  # Gato arcoíris animado en ASCII
    bb                       # Demo animada antigua en ASCII
    pipes                    # Tuberías animadas en terminal
    asciiquarium             # Acuario animado en ASCII
    unimatrix                # Otra variante estilo Matrix
    ascii-image-converter    # Convierte imágenes a ASCII
    fzf                      # Buscador interactivo en terminal
    zbar      #codigos qr
    wifi-qr
    ##################################
    # Estilo Retro / Terminal Vintage
    ##################################
    cool-retro-term          # Terminal estilo CRT retro
    cbonsai                  # Bonsái animado en ASCII
    tty-clock                # Reloj grande para terminal
    pipes-rs                 # Versión moderna de pipes animado (hecho en Rust)

    #####################
    # Herramientas del sistema
    #####################
    gparted                  # Editor gráfico de particiones
    htop                     # Monitor de procesos interactivo
    btop                     # Monitor del sistema moderno y visual
    fastfetch                # Muestra info del sistema al estilo neofetch

    #####################
    # Aceleración de video / Gráficos
    #####################
    libva-utils              # Herramientas para VA-API (aceleración por HW)
    libvdpau-va-gl           # Traducción VDPAU a VA-API
    intel-compute-runtime    # Soporte OpenCL para Intel
    intel-vaapi-driver       # Driver VA-API para Intel
    vaapiVdpau               # Traducción VA-API a VDPAU
    mesa                     # Implementación OpenGL estándar (drivers gráficos)
    egl-wayland              # Compatibilidad EGL con Wayland

    #################
    # Networking / Sync
    #################
    wget                     # Descargas desde terminal
    syncthing                # Sincronización P2P entre dispositivos
    localsend                # Compartir archivos en red local
       # VPN basada en WireGuard, fácil de usar

    ###########################
    # Desarrollo / Dev Tools
    ###########################
    git                      # Control de versiones
    neovim                   # Editor de texto mejorado (Vim moderno)
    gedit                    # Editor gráfico de texto
    python39                 # Intérprete Python 3.9
    jdk                      # Java Development Kit
    yazi                     # Navegador de archivos TUI con vista previa
    tree                     # Muestra estructura de carpetas como árbol

    ##########################
    # Productividad / Notas
    ##########################
    obsidian                 # Notas en Markdown con gráficos
    onlyoffice-bin           # Suite ofimática compatible con MS Office
    libreoffice-qt   # ofimatica

    ###############################
    # Comunicación / Mensajería
    ###############################
    telegram-desktop         # Cliente de Telegram
    vesktop                  # Cliente de Discord alternativo (basado en Vencord)

    ##########
    # Juegos
    ##########
    clonehero                # Juego de ritmo tipo Guitar Hero

    ######################
    # Herramientas Android
    ######################
    android-tools            # Herramientas ADB y Fastboot
    scrcpy                   # Control de Android desde PC

    ##############################
    # Captura de pantalla / Streaming
    ##############################
    flameshot                # Herramienta potente de screenshots
    obs-studio               # Grabación/Streaming profesional

    ######################
    # Multimedia / Piratería
    ######################
    stremio                  # Streaming de películas/series vía addons
    #miru                     # Cliente de manga/anime
    qbittorrent              # Cliente de descargas Torrent

    ###############################
    # KDE & Multimedia Creativa
    ###############################
    kdePackages.kdeconnect-kde    # Conexión entre teléfono y PC vía KDE Connect
    plasma-browser-integration    # Integración navegador con escritorio KDE
    qt5.qttools                   # Herramientas Qt5 (dep. de apps KDE)
    qt6.qttools                   # Herramientas Qt6
    ark                           # Gestor de archivos comprimidos
    vlc                           # Reproductor multimedia completo
    mpv                           # Reproductor ligero de video
    kdePackages.kdenlive          # Editor de video profesional (KDE)
    gimp                          # Edición de imágenes estilo Photos
    inkscape                     # Edición de imágenes estilo

    ##############
    # Educación
    ##############
    arduino-ide                  # Entorno de desarrollo para Arduino

    #####################################
    # Utilidades Boot / ISO / USB Tools
    #####################################
    ventoy-bin                  # Crear USBs multi-ISO fácilmente
   

  ];
}
