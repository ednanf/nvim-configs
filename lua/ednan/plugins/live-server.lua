return {
  "aurum77/live-server.nvim",
  build = function()
    require("live-server.util").install()
  end,
}
