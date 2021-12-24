require'nvim-treesitter.configs'.setup {
  ensure_installed = {"cpp", "c", "javascript", "html", "css", "lua"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`) --false by default
  highlight = {
    enable = true,              -- false will disable the whole extension
    additional_vim_regex_highlighting = false,
  },
}
