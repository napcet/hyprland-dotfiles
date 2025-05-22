
# 🧠 napcet-hyprland-dotfiles

Backup e gerenciamento dos meus **dotfiles** e configuração pessoal do Arch Linux com o window manager **Hyprland**, além de ferramentas, barras, launchers e ambientes Wayland.

Este repositório serve para:

- 🔧 Armazenar e versionar meu ambiente de desenvolvimento e trabalho.
- 🚀 Permitir restauração rápida do sistema em novos dispositivos.
- 🛠️ Compartilhar minha configuração com quem quiser aprender ou utilizar como base.

---

## 💻 **Distribuição**
- Arch Linux 🐧

## 🎨 **Ambiente**
- **Wayland** + **Hyprland**

---

## 🛠️ **Principais Ferramentas e Apps**

| Tipo               | Aplicativos / Ferramentas                      |
|--------------------|-------------------------------------------------|
| Window Manager     | Hyprland                                        |
| Barra              | Waybar                                          |
| Launcher           | Wofi, nwg-drawer                                |
| Notificações       | SwayNC                                          |
| Lock / Idle        | Hyprlock, Hypridle                              |
| Polkit Agent       | Hyprpolkitagent                                 |
| Gerenciador de Arquivos | Nemo                                       |
| Terminal           | Kitty                                           |
| Editor             | Neovim, Micro, Visual Studio Code               |
| Navegador          | Google Chrome                                   |
| Estética GTK       | nwg-look                                        |
| Dock               | nwg-bar                                         |
| Captura de tela    | Swappy, Hyprshot                                |
| Som e Pipewire     | WirePlumber, Pipewire                           |

---

## 📂 **Estrutura do Repositório**

```plaintext
napcet-hyprland-dotfiles/
├── .config/
│   ├── hypr/
│   ├── waybar/
│   ├── swaync/
│   ├── wofi/
│   ├── hyprpaper/
│   ├── hyprlock/
│   ├── hypridle/
│   ├── nwg-look/
│   ├── nwg-bar/
│   ├── nwg-drawer/
│   ├── kitty/
│   ├── neovim/
│   └── micro/
├── .zshrc
├── .gitconfig
├── pkglist-pacman.txt
├── pkglist-aur.txt
├── backup-dotfiles.sh
├── backup-log.txt
└── README.md
```

---

## 🔧 **Backup dos Dotfiles**

Execute o script para atualizar o backup dos seus arquivos locais:

```bash
./backup-dotfiles.sh
```

O script:
- 🗂️ Copia todos os arquivos e configurações relevantes.
- 🔄 Atualiza automaticamente a lista de pacotes instalados (Pacman e AUR).
- 🕓 Gera um log de cada backup no arquivo `backup-log.txt`.

---

## 🚀 **Restaurar em outro PC (manual por enquanto)**

1️⃣ Instale os pacotes do Arch Linux:

```bash
sudo pacman -S --needed - < pkglist-pacman.txt
```

2️⃣ Instale os pacotes do AUR manualmente, ou usando um helper como `yay`:

```bash
yay -S --needed - < pkglist-aur.txt
```

3️⃣ Copie os dotfiles:

```bash
cp -r .config/* ~/.config/
cp .zshrc ~/
cp .gitconfig ~/
```

---

## 🎯 **Objetivo do Projeto**

Este repositório não é um framework de instalação, mas sim uma referência pessoal e pública das minhas configurações. Qualquer pessoa pode se inspirar, aprender, adaptar e colaborar.

---

## 🤝 **Contribuição**

Se quiser sugerir melhorias, pode abrir um **issue** ou enviar um **pull request**. 😉

---

## ⚠️ **Atenção**
- Este repositório é desenvolvido para meu uso pessoal em Arch Linux com Hyprland.
- Pode não funcionar 100% em outros ambientes ou distros sem ajustes.

---

## 🏗️ **Licença**

Este projeto está licenciado sob a **MIT License** — veja o arquivo [LICENSE](LICENSE) para detalhes.
