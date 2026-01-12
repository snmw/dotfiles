# Personal Dotfiles

Managed by chezmoi


## Notes on Cursor

Cursor configuration management breaks a few standards and is a bit of a bear to manage. It stores files in the following places:

- `~/.cursor` - Current loaded settings/IDE state (`argv.json`, installed extensions, commands, plans, etc.)
- `$XDG_CONFIG_HOME/cursor` - `cursor-cli` configuration file
- `~/Library/Application Support/Cursor` (macOS) or `$XDG_CONFIG_HOME/Cursor` (Linux, or at least Fedora Bluefin via Flatpak) - General application state files, cookies, but also user configuration under `User/`.

It's possible to export the import pieces of this as a Cursor "profile" for migrating to other systems, but in order to avoid keeping that exported and up to date, I'm using symlinks to centralize everything to `$XDG_CONFIG_HOME/cursor` (and `$XDG_DATA_HOME/cursor` for commands). In my environment, this should lead to:

- TRACK  `~/.local/share/cursor/commands/`
- TRACK  `~/.config/cursor/cli-config.json`
- IGNORE `~/.config/cursor/keybindings.json`
- IGNORE `~/.config/cursor/mcp.json`
- IGNORE `~/.config/cursor/settings.json`
- IGNORE `~/.config/cursor/snippets/`

- LINK   `~/.cursor/commands/` -> `~/.local/share/cursor/commands/`
- LINK   `~/Library/Application Support/User/{keybindings.json,settings.json,snippets/}` -> (macOS) Equivalents in `chezmoi` _source_ directory
- LINK   `~/.config/Cursor/User/{keybindings.json,settings.json,snippets/}` -> (Linux) Equivalents in `chezmoi` _source_ directory

TODO: Figure out the best way of synchronizing installed extensions.