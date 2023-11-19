require("hlchunk").setup {
  chunk = {
    enable = true,
    notify = true,
    use_treesitter = false,
    support_filetypes = {
      "*.ts",
      "*.tsx",
      "*.js",
      "*.jsx",
      "*.lua",
    },
    chars = {
      horizontal_line = "─",
      vertical_line = "│",
      left_top = "╭",
      left_bottom = "╰",
      right_arrow = ">",
    },
    style = {
      { fg = "#d22f32" },
      { fg = "#e5646a" },
    },
  },
  indent = {
    enable = false,
  },

  line_num = {
    enable = true,
    support_filetypes = {
      "*.ts",
      "*.tsx",
      "*.js",
      "*.jsx",
      "*.lua",
    },
    style = "#d22f32",
  },

  blank = {
    enable = true,
    chars = { "" },
    style = {
      vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID "Whitespace"), "fg", "gui"),
    },
  },
}
