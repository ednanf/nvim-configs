-- bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- import each folder inside the plugins directory, in order to keep it organized
  {import = "ednan.plugins"},
  {import = "ednan.plugins.lsp"}
}, {
  install = {
    -- ensure the theme will be loaded while trying to install new plugins
    colorscheme = {"kanagawa"},
  },
  -- checks for update, but don't notify
  checker = {
    enabled = true,
    notify = false,
  },
  -- detects that new plugins were installed, but don't notify
  change_detection = {
    notfiy = false,
  },
})
