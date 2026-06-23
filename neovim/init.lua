vim.g.mapleader = " "        
vim.g.maplocalleader = " "

local opt = vim.opt
opt.number = true             
opt.relativenumber = true     
opt.splitright = true         
opt.splitbelow = true         
opt.expandtab = true          
opt.shiftwidth = 4            
opt.tabstop = 4               
opt.smartindent = true        
opt.termguicolors = true      
opt.ignorecase = true         
opt.smartcase = true          
opt.mouse = "a"               
opt.clipboard = "unnamedplus" 

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
 
    {
    "folke/tokyonight.nvim",
    lazy = false, 
    priority = 1000, 
    config = function()
      require("tokyonight").setup({
        style = "storm",       
        transparent = true,    
        styles = {
          sidebars = "transparent", 
          floats = "transparent",   
        },
      })
      
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  {
    "echasnovski/mini.statusline",
    version = false,
    config = function()
      require("mini.statusline").setup()
    end,
  }
})

local keymap = vim.keymap.set
keymap("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
keymap("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear search highlights" })

