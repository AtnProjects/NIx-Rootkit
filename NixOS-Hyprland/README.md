<div align="center">

# ❄️ KooL's NixOS + Hyprland Manual Installation Guide ❄️

💻 A minimalist step-by-step manual install for the NixOS-Hyprland setup from [@JaKooLit](https://github.com/JaKooLit)

</div>

---

## 🦽 Manual Installation Steps

Follow this guide if you want to **set up everything manually** and have full control over your configuration.

---

### 📦 1. Install Required Packages

Make sure you have these essential tools before starting:

```bash
nix-shell -p git vim curl pciutils
🛠️ You can replace vim with nano or any other terminal-based editor of your choice.

📁 2. Clone the Repository
Clone KooL’s NixOS-Hyprland setup into your home directory and navigate into it:

bash
Copy
Edit
git clone --depth 1 https://github.com/JaKooLit/NixOS-Hyprland.git ~/NixOS-Hyprland
cd ~/NixOS-Hyprland
🖥️ 3. Set Up Your Host Configuration
Copy the default host setup and rename it to your desired hostname:

bash
Copy
Edit
cp -r hosts/default hosts/<your-hostname>
Replace <your-hostname> with a name for your system.

✏️ 4. Customize Your Configuration
Edit the following files inside your new host directory:

hosts/<your-hostname>/config.nix

hosts/<your-hostname>/packages-fonts.nix

hosts/<your-hostname>/users.nix

🧠 5. Generate Your Hardware Config
Create a hardware config based on your system:

bash
Copy
Edit
sudo nixos-generate-config --show-hardware-config > hosts/<your-hostname>/hardware.nix
🚀 6. Build and Switch to Your Configuration
Now apply the setup using flakes (make sure to use your actual hostname):

bash
Copy
Edit
NIX_CONFIG="experimental-features = nix-command flakes" \
sudo nixos-rebuild switch --flake .#<your-hostname>
🎉 You're Done!
You now have a clean and modular Hyprland setup on NixOS!
Once installed, you can add:

GTK Themes & Icons

KooL's Hyprland Dots

Wallpapers

🔗 Visit the original repo for more customizations and extras:
JaKooLit/NixOS-Hyprland

<div align="center">
⭐ Give the original project a star if you found it helpful!
Made with ❤️ by @JaKooLit

</div> ```
