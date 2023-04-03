#my vim config file  for my workflow, edited in vimscript
````A few notes to personalizing this config ```

i)To add a plugin, go to VimAwesome, look it up, say Java plugin & select the vim plug option since we are using vim plug as our plugin manager.
ii)copy the plug text ie  ```Plug 'junegunn/fzf.vim'``` and paste it in the add plugins here section
iii) Save your changes to the file and type :%source command to refresh your changes, finally use the command :PlugInstall to install the plugin
#Deleting a plugin:
i) In your vimrc, navigate to the plugin section, and delete the entire plugin text ie ```Plug 'nvim-lua/plenary.nvim```
ii) Type the %source command to refresh your changes after saving and then type ```PlugClean``` to delete the plugin, finally type y to the delete prompt and you have successfully deleted the plugin

#Changing your colorscheme:
My default colorscheme is catpuccin, but this should not stop you from installing your own favorite colorschemei) First, copy the "Plug text" after looking it up say in VimAwesome, make sure you select vim plug as your plugin manager
ii)navigate to the line colorscheme catpuccin_mocha, replace the text catpuccin_mocha with the name of your colorscheme say tokyonight or gruvbox
iii) Do the same to the lightline option below it to make sure your theme retains consistency throughout your editor

#below is an example of how you would change the colorscheme to tokyonight
Add the below text to the add plugin section

`Plug 'ghifarit53/tokyonight-vim'`

navigate to the colorscheme section and delete the catpuccin_mocha text and add the following so that your end result would look like this:
`colorscheme tokyonight`
`let g:airline_theme = 'tokyonight'`
`let g:lightline = {
    \'colorscheme': 'tokyonight'
  }`

For any questions/enquiries, open a pull request or email me directly at clingyking007@gmail.com

