return {
  {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    require('kanagawa').setup({
      transparent = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      }
    })
    -- load the color scheme here
    vim.cmd([[colorscheme kanagawa]])
  end,
  },
}

-- Variants
-- vim.cmd([[colorscheme kanagawa]])
-- vim.cmd([[colorscheme kanagawa-dragon]])
-- vim.cmd([[colorscheme kanagawa-lotus]])


