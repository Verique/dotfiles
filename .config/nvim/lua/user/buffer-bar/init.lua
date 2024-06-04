local M = {}
M.setup = function()
  require('user.buffer-bar.treebar')
  require('user.buffer-bar.keymaps')

  vim.api.nvim_set_hl(0, "BufferOffset", {link = "BufferVisible"})

  require("barbar").setup {
    -- Enable/disable animations
    animation = false,

    -- Enable/disable auto-hiding the tab bar when there is a single buffer
    auto_hide = false,

    -- Enable/disable current/total tabpages indicator (top right corner)
    tabpages = true,

    -- Enable/disable close button
    closable = true,


    --  - left-click: go to buffer
    --  - middle-click: delete buffer
    clickable = false,

    -- Excludes buffers from the tabline
    exclude_ft = {},
    exclude_name = {},

    -- Enable/disable icons
    -- if set to 'numbers', will show buffer index in the tabline
    -- if set to 'both', will show buffer index and icons in the tabline
    -- Configure icons on the bufferline.
    icons = {
          filetype = {enabled = false},
          icon_pinned = {button = ''},
          icon_close_tab = {},
          separator = {
              left = '▎',
          },
          inactive = { separator = {
              left = '▎',
          }},
          button = ' ',
          modified = { button = ''}
      },

    -- If set, the icon color will follow its corresponding buffer
    -- highlight group. By default, the Buffer*Icon group is linked to the
    -- Buffer* group (see Highlighting below). Otherwise, it will take its
    -- default value as defined by devicons.
    icon_custom_colors = false,

    -- If true, new buffers will be inserted at the start/end of the list.
    -- Default is to indsasert after current buffer.
    insert_at_end = false,
    insert_at_start = false,

    -- Sets the maximum padding width with which to surround each tab
    maximum_padding = 1,

    -- Sets the maximum buffer name length.
    maximum_length = 30,

    -- If set, the letters for each buffer in buffer-pick mode will be
    -- assigned based on their name. Otherwise or in case all letters are
    -- already assigned, the behavior is to assign letters in order of
    -- usability (see order below)
    semantic_letters = true,

    -- New  letters are assigned in this order. This order is
    -- optimal for the qwerty keyboard layout but might need adjustement
    -- for other layouts.
    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

    -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
    -- where X is the buffer number. But only a static string is accepted here.
    no_name_title = nil,
  }
end
return M