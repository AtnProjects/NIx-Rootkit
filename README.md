# 🎮 **NixOS Master Setup**  
### _Gaming, Creatividad y Terminal con Flow_

![NixOS Gaming Desktop](https://github.com/user-attachments/assets/e9355756-3295-41a1-b054-46d3c8089b2c)

---

## 📁 Estructura del Proyecto

### `default/`  
🔹 Configuración base mínima para entornos genéricos, pruebas o VMs.

### `rootkit/`  
💻 Entorno principal con sistema gráfico completo, gaming y virtualización.

- Configuración completa de sistema, hardware y usuarios.
- Repositorio de Flatpak con Flathub habilitado.
- Aplicaciones y servicios declarados en `home/` (sin Home Manager).
- Soporte para virtualización en `Host-desktop/`.

---

## 🚀 Aplicaciones Principales

Definidas en: `hosts/rootkit/home/home.nix`

### 🖥️ Terminal & CLI
- `cowsay`, `fortune`, `cmatrix`
- `htop`, `fastfetch`, `neofetch`

### 🧰 Sistema
- `gparted`, `jq`, `nmcli`, `rsync`
- Drivers gráficos (`mesa`, `libva-utils`)

### 🌐 Red & Sincronización
- `syncthing`, `localsend`

### 👨‍💻 Desarrollo
- `git`, `neovim`, `python39`, `jdk`

### 🗂️ Productividad
- `obsidian`, `libreoffice-qt`, `onlyoffice-bin`

### 📞 Comunicación
- `telegram-desktop`, `vesktop`

### 🎮 Juegos
- `steam`, `clonehero`

### 🤖 Android
- `android-tools`, `scrcpy`

### 🎬 Multimedia
- `vlc`, `mpv`, `gimp`, `inkscape`

### 📸 Captura & Streaming
- `flameshot`, `obs-studio`

### 🎓 Educación
- `arduino-ide`

---

## 📸 Interfaz

|   1         |  2            |
|------------|--------------|
| ![2025-05-26_01-41](https://github.com/user-attachments/assets/2990542d-0242-4462-a38c-c1a1d619a734) | ![2025-05-26_01-45](https://github.com/user-attachments/assets/264173df-49d7-405f-aef3-3dcc07e94705) |

---

## 📜 Scripts

### 🔐 Script de Gestión de WiFi — `script.sh`

Automatiza la creación de perfiles de red en NetworkManager desde un archivo JSON exportado por apps como WiFiList (Shizuku).

#### ✅ Funcionalidades:
- Lee `WiFiList_26_05_2025.json` y crea conexiones con `nmcli`.
- Omite redes abiertas o sin contraseña.
- Verifica dependencias (`jq`, `nmcli`) y existencia del archivo.
- Ideal para restaurar redes tras reinstalaciones o clonado de sistema.

#### ▶️ Ejemplo de uso:

```bash
bash script.sh
