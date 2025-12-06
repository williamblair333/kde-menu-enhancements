# ✦ KDE Menu Enhancements  
*Precision-crafted application menu refinements for KDE Plasma power users*

---

## 🖥️ Overview

**KDE Menu Enhancements** is a collection of curated `.desktop` overrides and structural adjustments that refine how KDE Plasma presents, organizes, and discovers applications.  
The goal is singular: **a cleaner, faster, more coherent application launcher** — without modifying KDE internals or introducing heavy dependencies.

This project focuses on **professional UX consistency**, **keyboard-efficient navigation**, and **predictable categorization** across distributions.

---

## ✨ Key Features

- **Unified Naming Standards**  
  Ensures application titles are consistent, readable, and professionally presented.

- **Refined Categories**  
  Places apps where users expect them — fixing common mis-categorized entries from upstream packages.

- **Keyword Improvements**  
  Enhances Dolphin, KRunner, and App Launcher search accuracy.

- **Minimalist Design Philosophy**  
  No bloat. No rewrites. Only targeted, high-impact `.desktop` file improvements.

- **Zero Risk**  
  Entirely reversible and user-local by default.  
  System-wide deployment supported for managed environments.

---

## 📂 Repository Structure

```
kde-menu-enhancements/
├── applications/
│   ├── *.desktop          # Enhanced app entries
│   └── categories/        # Category overrides
└── icons/                 # Optional icon refinements
```

---

## ⚙️ Installation

### User-Local (recommended)

```bash
git clone https://github.com/williamblair333/kde-menu-enhancements.git
cp kde-menu-enhancements/applications/*.desktop ~/.local/share/applications/
kbuildsycoca6
```

### System-Wide

```bash
sudo cp kde-menu-enhancements/applications/*.desktop /usr/share/applications/
sudo kbuildsycoca6
```

### Refresh KDE Cache  
(Required after any `.desktop` modification)

```bash
kbuildsycoca6
```

---

## 🧭 What This Project Improves

| Area               | Enhancement                                                                 |
| ------------------ | --------------------------------------------------------------------------- |
| **Menu Clarity**   | Names and categories feel unified and intentional                           |
| **Search Results** | Faster, more relevant discovery in Launcher/KRunner                         |
| **UX Consistency** | Removes clutter, duplicates, vague titles, and misplaced applications       |
| **Workflow Speed** | Optimized for keyboard-centric users and power-desktop environments         |

---

## 🔧 Customization

`.desktop` files are text-based and fully editable.

Common tweaks:

- `Name=` → display name  
- `Categories=` → menu placement  
- `Keywords=` → improves KRunner/App Launcher search  
- `Icon=` → override icon theme choice

Useful reference:

```bash
man desktop-file
```

---

## 🧪 Compatibility

- KDE Plasma 5.x and Plasma 6  
- Wayland and X11  
- Debian, Ubuntu, Arch, Fedora, openSUSE, and derivatives  

---

## 🤝 Contributing

Pull requests welcome.  
Ideal contributions include:

- Category corrections  
- Keyword enhancements  
- Icon/visual refinements  
- Menu organization proposals  
- Application-specific polishing  

Ensure changes are consistent with the project's **clean, professional UX mandate**.

---

## 📜 License

MIT — clean, permissive, reusable.

---

## 🜍 Vision

The Plasma desktop is powerful — but inconsistent across distros and upstream packages.  
**KDE Menu Enhancements** offers a precise, minimalistic solution:  
*polish the small things that users interact with dozens of times per day.*

A simple idea — executed with care — elevates the entire desktop experience.

---

**Maintained by Xavier — X Forge Labs**  
Professional UX refinements for users who expect more.
