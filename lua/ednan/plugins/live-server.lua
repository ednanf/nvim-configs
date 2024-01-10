return {
  "aurum77/live-server.nvim",
  config = function()
    require("plugins.live-server")
  end,
  build = function()
    require("live_server.util").install()
  end,
}
