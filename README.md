# Howard Do - Neovim config

### Introduction

here is my neovim config, starting point was from kickstart.nvim. Later I decided to rebuilt its structure based on [ThePriemagen video](https://youtu.be/w7i4amO_zaE)

### Installation

This config, which is derived from Kickstart.nvim targets *only* the latest ['stable'](https://github.com/neovim/neovim/releases/tag/stable) and latest ['nightly'](https://github.com/neovim/neovim/releases/tag/nightly) of Neovim. If you are experiencing issues, please make sure you have the latest versions.


Additional system requirements:
- Make sure to review the readmes of the plugins if you are experiencing errors. In particular:
  - [ripgrep](https://github.com/BurntSushi/ripgrep#installation) is required for multiple [telescope](https://github.com/nvim-telescope/telescope.nvim#suggested-dependencies) pickers.
- See as well [Windows Installation](#Windows-Installation)

### Configuration And Extension

* Adding plugin by first adding into `lua/howarddo/lazy.lua` then add the configuration file into `after/plugin` folder 

#### Example: Adding neo-tree plugin to display file tree

In the file: `lua/howarddo/lazy.lua`, add:

```lua
-- File: lua/howarddo/lazy.lua

{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
},
```

Then create file `neotree.lua` inside `after/plugin` folder

```lua
-- File: after/plugin/neotree.lua

require("neo-tree").setup({
  -- your options, setup here
})
```

This will automatically install `neo-tree.nvim` and enable it on startup. For more information, see documentation for [lazy.nvim](https://github.com/folke/lazy.nvim).

### Windows Installation

Installation may require installing build tools, and updating the run command for `telescope-fzf-native`

See `telescope-fzf-native` documentation for [more details](https://github.com/nvim-telescope/telescope-fzf-native.nvim#installation)

This requires:

- Install CMake, and the Microsoft C++ Build Tools on Windows

```lua
{'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
```
