<div align="center">

# ❄️ Guía de Instalación Manual - NixOS + Hyprland por KooL ❄️

💻 Una instalación paso a paso, minimalista y manual del setup NixOS-Hyprland de [@JaKooLit](https://github.com/JaKooLit)

</div>

---

## 🦽 Pasos para la Instalación Manual

Sigue esta guía si deseas **configurar todo manualmente** y tener control total sobre tu sistema NixOS + Hyprland.

---

### 📦 1. Instalar Paquetes Requeridos

Asegúrate de tener estas herramientas instaladas antes de comenzar:

```bash
nix-shell -p git vim curl pciutils
```

> 🛠️ Puedes reemplazar `vim` por `nano` o el editor de texto que prefieras.

---

### 📁 2. Clonar el Repositorio

Clona el repositorio del setup NixOS-Hyprland de KooL y entra en él:

```bash
git clone --depth 1 https://github.com/JaKooLit/NixOS-Hyprland.git ~/NixOS-Hyprland
cd ~/NixOS-Hyprland
```

---

### 🖥️ 3. Crear la Configuración para tu Host

Copia la configuración por defecto y renómbrala con el nombre que le quieras dar a tu máquina:

```bash
cp -r hosts/default hosts/<tu-nombre-de-host>
```

Reemplaza `<tu-nombre-de-host>` por un nombre único para tu sistema.

---

### ✏️ 4. Personaliza tu Configuración

Edita los siguientes archivos dentro de tu nuevo directorio `hosts/<tu-nombre-de-host>/`:

- `config.nix`
- `packages-fonts.nix`
- `users.nix`

Haz los cambios necesarios para adaptarlos a tu hardware y preferencias personales.

---

### 🧠 5. Generar Configuración de Hardware

Genera la configuración de hardware específica para tu equipo:

```bash
sudo nixos-generate-config --show-hardware-config > hosts/<tu-nombre-de-host>/hardware.nix
```

---

### 🚀 6. Construir e Instalar tu Configuración

Aplica tu configuración usando flakes (reemplaza `<tu-nombre-de-host>` con el nombre que usaste):

```bash
NIX_CONFIG="experimental-features = nix-command flakes" \
sudo nixos-rebuild switch --flake .#<tu-nombre-de-host>
```

---

## 🎉 ¡Instalación Completa!

¡Ya tienes un sistema NixOS + Hyprland modular y limpio!  
Una vez finalizada la instalación, puedes agregar:

- Temas e iconos GTK  
- Dotfiles de Hyprland de KooL  
- Fondos de pantalla personalizados  

---

> 🔗 **Enlaces Útiles**  
> [Repositorio Original](https://github.com/JaKooLit/NixOS-Hyprland)  
> [Dotfiles de Hyprland
