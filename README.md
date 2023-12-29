# Vim Configuration with Vim-Plug

This repository provides a Vim configuration script designed to enhance your Vim experience through the use of various plugins managed by Vim-Plug. The script is tailored to be user-friendly, making it accessible for novices.

## Prerequisites

Before applying this Vim configuration, ensure that Vim is installed on your system. Additionally, Vim-Plug, the plugin manager utilized in this configuration, must be installed to facilitate the seamless management and installation of additional plugins. 

### Installation Steps

1. **Install Vim-Plug:**

   Open your terminal and execute the following command:

   ```bash
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

2. **Download the Vim Configuration:**

   Clone this repository into your home directory or a directory of your choice:

   ```bash
   git clone https://github.com/your-username/vim-config.git ~/.vim-config
   ```

3. **Create Symbolic Links:**

   Establish symbolic links for the Vim configuration file:

   ```bash
   ln -s ~/.vim-config/.vimrc ~/.vimrc
   ```

4. **Open Vim and Install Plugins:**

   Launch Vim and execute the following command to install the configured plugins:

   ```vim
   :PlugInstall
   ```

   Close and reopen Vim after completing the installation.

## Features

- **Syntax Highlighting:** Supports various programming languages through the `vim-polyglot` plugin.
- **Solidity Support:** Enhanced support for Solidity language with the `vim-solidity` plugin.
- **Java Support:** Improved Java development with the `vim-sensible` and `seoul256` plugins.
- **Airline Status Line:** A sleek and informative status line provided by `vim-airline`.
- **Auto-completion with CoC:** Utilize auto-completion and language server features with `coc.nvim`.
- **Fuzzy File Searching:** Easily find and open files using `Telescope` and `fzf.vim`.
- **Lightline with Icons:** A minimal and informative status line with icons using `lightline` and `vim-devicons`.

## Key Mappings

- Press `<Space>ff` to find files using Telescope.
- Press `<Space>fg` to search for text in files using Telescope.
- Press `<Space>fb` to list open buffers using Telescope.
- Press `<Space>fh` to search for help tags using Telescope.
- Press `<Space>pf` to find files using fzf.vim.

## Additional Configurations

The configuration script includes additional settings for line numbers, virtual editing, cursor highlighting, and more. Feel free to explore and customize the configuration to suit your preferences.

## Troubleshooting

If you encounter any issues or wish to further customize the configuration, refer to the comments within the `.vimrc` file for explanations and instructions.

Happy coding with Vim!
