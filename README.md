# Neovim Config

Persönliche Neovim-Config auf Basis von [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), aufgeteilt in Module. Plugins werden mit [lazy.nvim](https://github.com/folke/lazy.nvim) verwaltet. Läuft auf Linux und macOS.

## Struktur

- `lua/config/`: Optionen (`settings.lua`), Keymaps (`mappings.lua`), lazy.nvim-Setup (`lazy.lua`)
- `lua/plugins/`: ein Plugin pro Datei

## Voraussetzungen

- Neovim ≥ 0.11, `git`, `make`, ein C-Compiler (für die Treesitter-Parser und telescope-fzf-native)
- `ripgrep` (für das Live-Grep von Telescope)
- Eine Nerd Font (oder ein Terminal wie kitty, das die Glyphen mitliefert)
- `yarn` (für den Build von markdown-preview)
- LaTeX mit `latexmk`; Viewer: Skim (macOS) bzw. Okular (Linux)

LSP-Server und Formatter (pyright, ts_ls, jsonls, lua_ls, stylua, black, prettier) installiert Mason automatisch.

## Wichtigste Keys (Leader = `Space`)

| Key | Aktion |
|---|---|
| `<leader>sf` / `sg` / `sw` | Dateien suchen / grep / Wort unter dem Cursor suchen |
| `<leader><leader>` | Buffer |
| `<leader>a`, `<C-e>`, `<leader>1-4` | Harpoon |
| `<leader>gg` | Neogit |
| `<leader>f` | Formatieren |
| `<leader>u` | Undotree |
| `<leader>mp` | Markdown-Preview |
| `grn` / `gra` / `grd` / `grr` | LSP: Umbenennen / Code-Action / Definition / Referenzen |
