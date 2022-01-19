


require'nvim-tree'.setup {
   side = "left",
   width = 25,
   ignore = {".git", "node_modules", ".cache"},
   auto_open = 0,
   auto_close = 0,
   quit_on_open = 0,
   follow = 1,
   indent_markers = 1,
   hide_dotfiles = 1,
   git_hl = 1,
   root_folder_modifier = ":~",
   allow_resize = 1,

   show_icons = {
      git = 0,
      folders = 1,
      files = 1
   },

   icons = {
      default = '',
      symlink = '',
      folder  = {
         default = "",
         open = "",
         empty = "",
         empty_open = "",
         symlink = "",
         symlink_open = "",
      },
      lsp  = {
         hint = "",
         info = "",
         warning = "",
         error = "",
      }
   },
}
