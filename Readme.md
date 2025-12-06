# ✦ KDE Menu Enhancements  
*Practical Dolphin right-click extensions for faster, smarter file workflows*

---

## 🖥️ Overview

**KDE Menu Enhancements** adds two high-value service-menu actions to Dolphin, KDE’s file manager.  
Each enhancement is minimalist, safe, and designed for power-user efficiency:

1. **Open All Files** — instantly open every selected file using its default application.  
2. **Paste Link** — create filesystem links from clipboard paths instead of duplicating files.

These additions integrate cleanly into Dolphin’s context menu without altering system behavior or requiring any KDE internals to be modified.

---

## ✨ Features

### ✔ Open All Files  
Adds a menu entry allowing you to open **every selected file at once**.

- Useful for batch media review, coding sessions, image sets, multi-document workflows.
- Respects each file’s default associated application.
- Executes via a small, auditable shell script.

### ✔ Paste Link  
Creates a link (not a copy) from whatever file path or URL is currently in your clipboard.

- Ideal for decluttering large projects.
- Lets you arrange reference folders without duplicating data.
- Perfect for symbolic link workflows, media libraries, dev environments, and research folders.

---

## 📁 What Each File Does

### `dce_open_all_files.desktop`
Dolphin service-menu definition for **Open All Files**.  
Adds the right-click menu entry and passes selected file paths to the script.

### `dce_open_all_files.sh`
Executes the “open all selected files” action.

- Iterates through all selected items.
- Opens each file with its default handler.

### `dce_paste_link.desktop`
Service-menu definition for **Paste Link**.  
Triggered when you right-click inside a folder and choose the link-creation option.

### `dce_paste_link.sh`
Implements the **Paste Link** behavior.

- Reads current clipboard content.
- Creates a link in the folder where the user invoked the action.

---

## 📦 Installation

### User-Local (recommended)

```bash
git clone https://github.com/williamblair333/kde-menu-enhancements.git

mkdir -p ~/.local/share/kservices5/ServiceMenus/
cp kde-menu-enhancements/*.desktop ~/.local/share/kservices5/ServiceMenus/

mkdir -p ~/.local/bin/
cp kde-menu-enhancements/*.sh ~/.local/bin/
chmod +x ~/.local/bin/*.sh

kbuildsycoca6
```

### System-Wide

```bash
sudo cp kde-menu-enhancements/*.desktop /usr/share/kservices5/ServiceMenus/
sudo cp kde-menu-enhancements/*.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/*.sh

sudo kbuildsycoca6
```

---

## 🧭 Usage

### **Open All Files**
1. Select multiple files in Dolphin.  
2. Right-click → **Open All Files**.  
3. Each file opens with its associated default application.

### **Paste Link**
1. Copy a file path or URL to your clipboard.  
2. Right-click inside a folder → **Paste Link**.  
3. A link is created in the current directory pointing to the original.

---

## 🧪 Compatibility

- KDE Plasma 5 & 6  
- Dolphin on X11 or Wayland  
- Works on all major distros (Debian/Ubuntu, Arch, Fedora, openSUSE)

---

## 🤝 Contributing

Enhancements to the service menus or additional workflows are welcome.  
Please ensure contributions remain:

- Minimal  
- Safe  
- Purpose-driven  
- Fully auditable  

---

## 📜 License

MIT — lightweight, permissive, and user-friendly.

---

**Maintained by Xavier — X Forge Labs**  
Small tools. Big workflow gains.
