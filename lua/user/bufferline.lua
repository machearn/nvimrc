local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
    right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
  },
  highlights = {
    fill = {
      fd = { attribute = "fg", highlight = "#ff0000" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    background = {
      fd = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },

    buffer_visible = {
      fd = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },

    close_button = {
      fd = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    close_button_visible = {
      fd = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },

    tab_selected = {
      fd = { attribute = "fg", highlight = "Normal" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
    tab = {
      fd = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    tab_close = {
      fd = { attribute = "fg", highlight = "TabLineSel" },
      bg = { attribute = "bg", highlight = "Normal" },
    },

    duplicate_selected = {
      fd = { attribute = "fg", highlight = "TabLineSel" },
      bg = { attribute = "bg", highlight = "TabLineSel" },
      italic = true,
    },
    duplicate_visible = {
      fd = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
      italic = true,
    },
    duplicate = {
      fd = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
      italic = true,
    },

    modified = {
      fd = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    modified_selected = {
      fd = { attribute = "fg", highlight = "Normal" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
    modified_visible = {
      fd = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },

    separator = {
      fd = { attribute = "bg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    separator_selected = {
      fd = { attribute = "bg", highlight = "Normal" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
    indicator_selected = {
      fd = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
  },
}
