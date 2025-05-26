# Entorno Personal en NixOS

Este repositorio contiene la configuración modular de mi entorno personal en **NixOS**, incluyendo ajustes de sistema, configuración de usuarios, software personalizado, y más. Está diseñado para ser reproducible, mantenible y fácilmente desplegable en diferentes máquinas.

---

## 📁 Estructura del Proyecto

├── assets/ # Recursos visuales y configuraciones de entorno
│   ├── fastfetch/ # Configuraciones para Fastfetch
│   ├── gtk-3.0/ # Ajustes de apariencia GTK
│   ├── Thunar/ # Configuración personalizada de Thunar
│   └── xfce4/ # Configuración de XFCE4
├── auto-install.sh # Instalador automatizado
├── flake.nix # Entrada principal para Nix Flakes
├── flake.lock # Archivo de bloqueo de dependencias
├── hosts/ # Configuración por máquina/host
│   ├── default/ # Configuración por defecto
│   └── rootkit/ # Configuración para un host específico
├── modules/ # Módulos personalizados de Nix
├── install.sh # Script de instalación manual
├── CHANGELOG.md # Registro de cambios
├── CODE_OF_CONDUCT.md # Código de conducta
├── COMMIT_MESSAGE_GUIDELINES.md # Guía para mensajes de commit
├── CONTRIBUTING.md # Guía para contribuciones
└── README.md # Este archivo

yaml
Copy
Edit

---

## 🚀 Instalación Rápida

### Requisitos

- Sistema base con Nix instalado.
- Habilitado el soporte para **flakes** (`nix.experimental-features = nix-command flakes`).

### Instalación

```bash
git clone https://github.com/tu_usuario/tu_repo.git
cd tu_repo
./install.sh
O para una instalación más automatizada:

bash
Copy
Edit
./auto-install.sh
🧩 Características
Configuración modular por host.

Soporte para drivers AMD, Intel, y NVIDIA.

Integración con Steam, Sunshine, Wine y más.

Soporte para máquinas virtuales (Virt-Manager, VirtualBox).

Configuración estética personalizada (GTK, Fastfetch, Thunar).

Gestión de paquetes y fuentes por separado.

🖥️ Hosts Soportados
default: configuración base para equipos genéricos.

rootkit: configuración personalizada para una máquina específica (incluye programas, servicios y entorno gráfico).

📄 Documentación
Consulta los siguientes archivos para más información:

CONTRIBUTING.md: cómo contribuir al proyecto.

CODE_OF_CONDUCT.md: normas de comunidad.

COMMIT_MESSAGE_GUIDELINES.md: cómo escribir mensajes de commit.

CHANGELOG.md: historial de cambios del proyecto.

⚖️ Licencia
Este proyecto se distribuye bajo la licencia MIT, a menos que se indique lo contrario.

🙋‍♂️ Autor
Tu Nombre o Alias

Puedes contactarme o seguirme para actualizaciones futuras.

yaml
Copy
Edit

---

¿Quieres que lo adapte para subirlo directamente a GitHub o incluir un badge de licencia, flake status, etc.?






You said:
todo en un solo archivo


ChatGPT said:
Perfecto. Aquí tienes el contenido completo del README.md listo para copiar y pegar, todo en un solo archivo:

markdown
Copy
Edit
# Entorno Personal en NixOS

Este repositorio contiene la configuración modular de mi entorno personal en **NixOS**, incluyendo ajustes de sistema, configuración de usuarios, software personalizado y más. Está diseñado para ser reproducible, mantenible y fácilmente desplegable en diferentes máquinas.

---

## 📁 Estructura del Proyecto

├── assets/ # Recursos visuales y configuraciones de entorno
│   ├── fastfetch/ # Configuraciones para Fastfetch
│   ├── gtk-3.0/ # Ajustes de apariencia GTK
│   ├── Thunar/ # Configuración personalizada de Thunar
│   └── xfce4/ # Configuración de XFCE4
├── auto-install.sh # Instalador automatizado
├── flake.nix # Entrada principal para Nix Flakes
├── flake.lock # Archivo de bloqueo de dependencias
├── hosts/ # Configuración por máquina/host
│   ├── default/ # Configuración por defecto
│   └── rootkit/ # Configuración para un host específico
├── modules/ # Módulos personalizados de Nix
├── install.sh # Script de instalación manual
├── CHANGELOG.md # Registro de cambios
├── CODE_OF_CONDUCT.md # Código de conducta
├── COMMIT_MESSAGE_GUIDELINES.md # Guía para mensajes de commit
├── CONTRIBUTING.md # Guía para contribuciones
├── q # (No especificado, posible script interno)
└── README.md # Este archivo

yaml
Copy
Edit

---

## 🚀 Instalación Rápida

### Requisitos

- Sistema base con Nix instalado.
- Habilitado el soporte para **flakes**:
  
  Agrega esto a tu `/etc/nix/nix.conf` o `~/.config/nix/nix.conf`:

experimental-features = nix-command flakes

bash
Copy
Edit

### Instalación

```bash
git clone https://github.com/tu_usuario/tu_repo.git
cd tu_repo
./install.sh
O para una instalación más automatizada:

bash
Copy
Edit
./auto-install.sh
🧩 Características
Configuración modular por host.

Soporte para drivers AMD, Intel y NVIDIA.

Integración con Steam, Sunshine, Wine y más.

Soporte para máquinas virtuales (Virt-Manager, VirtualBox).

Configuración estética personalizada (GTK, Fastfetch, Thunar).

Gestión de paquetes y fuentes por separado.

Scripts reutilizables para instalación rápida.

🖥️ Hosts Soportados
default: configuración base para equipos genéricos.

rootkit: configuración personalizada para una máquina específica (programas, servicios, entorno gráfico).

📄 Documentación Adicional
CONTRIBUTING.md: Cómo contribuir al proyecto.

CODE_OF_CONDUCT.md: Normas de conducta en el repositorio.

COMMIT_MESSAGE_GUIDELINES.md: Cómo redactar buenos commits.

CHANGELOG.md: Historial de cambios del entorno.

⚖️ Licencia
Este proyecto se distribuye bajo la licencia MIT, salvo que se indique lo contrario en archivos individuales.

🙋‍♂️ Autor
Tu Nombre o Alias
Entusiasta de NixOS, automatización y entornos reproducibles.

lua
Copy
Edit

¿Deseas que incluya también los badges de GitHub (build status, license, etc.), un logo, o una sección de "Screenshots" con tu imagen de `fastfetch/nixos.png`? Puedo agregarlo sin problemas.






You said:
habla de los host 


ChatGPT said:
Perfecto, aquí tienes el README.md actualizado con una sección más completa y descriptiva sobre los hosts definidos en tu estructura (default y rootkit), manteniendo todo en un solo archivo:

markdown
Copy
Edit
# Entorno Personal en NixOS

Este repositorio contiene la configuración modular de mi entorno personal en **NixOS**, incluyendo ajustes del sistema, configuración de usuarios, programas personalizados y más. El enfoque está en la reproducibilidad, la organización por máquina (host) y la facilidad de mantenimiento.

---

## 📁 Estructura del Proyecto

├── assets/ # Recursos visuales y configuraciones gráficas
│   ├── fastfetch/ # Configuración de Fastfetch
│   ├── gtk-3.0/ # Preferencias de estilo GTK
│   ├── Thunar/ # Configuración del explorador de archivos Thunar
│   └── xfce4/ # Configuración de helpers para XFCE4
├── auto-install.sh # Instalación automatizada
├── flake.nix # Declaración principal de flake
├── flake.lock # Archivo de bloqueo de versiones
├── hosts/ # Configuración específica por máquina (host)
│   ├── default/ # Host base genérico
│   └── rootkit/ # Host personalizado con entorno gráfico y programas
├── modules/ # Módulos de configuración reutilizables
├── install.sh # Instalación manual
├── CHANGELOG.md # Registro de cambios
├── CODE_OF_CONDUCT.md # Código de conducta del proyecto
├── COMMIT_MESSAGE_GUIDELINES.md # Guía para mensajes de commit
├── CONTRIBUTING.md # Guía para contribuir al proyecto
├── q # (No especificado, probable utilidad interna)
└── README.md # Este archivo

yaml
Copy
Edit

---

## 🚀 Instalación Rápida

### Requisitos

- Tener instalado Nix con soporte para flakes.
- Agrega a tu configuración:

experimental-features = nix-command flakes

bash
Copy
Edit

### Comandos

Clonar y ejecutar el entorno:

```bash
git clone https://github.com/tu_usuario/tu_repo.git
cd tu_repo
./install.sh
O usando el instalador automático:

bash
Copy
Edit
./auto-install.sh
🧩 Características Generales
Arquitectura modular: configuración dividida por módulos y hosts.

Soporte para múltiples drivers (AMD, Intel, NVIDIA, PRIME).

Integración con programas gráficos: Steam, Sunshine, Wine.

Entorno estético personalizado: GTK, Fastfetch, XFCE.

Scripts para instalaciones automatizadas y manuales.

🖥️ Hosts Soportados
🔹 default/
Host base minimalista, orientado a entornos genéricos o virtuales. Incluye:

Configuración básica de sistema.

Usuarios predefinidos.

Fuentes y paquetes comunes.

Ideal para pruebas, entornos headless o como plantilla para nuevos hosts.

🔸 rootkit/
Host principal y personalizado. Diseñado para una estación de trabajo con entorno gráfico. Contiene:

Configuración del sistema: config.nix, hardware.nix, variables.nix.

Gestión de usuarios: con configuraciones específicas en users.nix.

Home Manager: completamente integrado para personalización del entorno del usuario.

Programas como:

chromium/

steam/

sunshine/ (streaming)

wine/ (compatibilidad con apps Windows)

Virtualización:

virtmanager/ y VirtualBox/ configurados como módulos independientes.

Fuentes y Flatpak:

Gestión de fuentes en packages-fonts.nix.

Repositorio Flathub habilitado en Flathub/flathub.

Este host representa mi entorno de trabajo diario: visual, funcional y optimizado para rendimiento y compatibilidad.

📄 Documentación Adicional
CONTRIBUTING.md — cómo contribuir al proyecto.

CODE_OF_CONDUCT.md — normas del repositorio.

COMMIT_MESSAGE_GUIDELINES.md — estilo de mensajes de commit.

CHANGELOG.md — historial de cambios.

⚙️ Módulos Reutilizables
Ubicados en modules/, permiten integrar funcionalidades específicas al sistema:

amd-drivers.nix

intel-drivers.nix

nvidia-drivers.nix

nvidia-prime-drivers.nix

local-hardware-clock.nix

vm-guest-services.nix

Pueden ser importados fácilmente desde flake.nix o hosts/*/config.nix.

⚖️ Licencia
Distribuido bajo la licencia MIT, salvo indicación contraria en archivos individuales.

🙋 Autor
Tu Nombre o Alias
Entusiasta de NixOS, automatización y configuración declarativa.


![2025-05-26_01-45](https://github.com/user-attachments/assets/ca05eeef-7cb3-45a3-82ad-689c66260def)
