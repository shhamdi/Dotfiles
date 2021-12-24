--[[
--The default settings:

require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
--]]
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox_dark',
    --section_separators = '',
    --component_separators = '|',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      'branch',
      {
        'diff',
        colored = true,
        diff_color = {
          added    = { fg = '#28A745' },
          modified = { fg = '#DBAB09' },
          removed  = { fg = '#D73A49' }
        },
        symbols = {
          added    = " ",
          modified = " ",
          removed  = " "
        }
      }, 
      {
        'diagnostics',
        sections = {'error', 'warn', 'info', 'hint'},
        diagnostics_color = {
          error = { fg = '#FF3333' },
          warn  = { fg = '#D75F00' },
          info  = { fg = '#0087AF' },
          hint  = { fg = '#008700' }
        },
        symbols = {
          error = " ",
          warn  = " ",
          info  = " ",
          hint  = " "
        }
      }
    },
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
