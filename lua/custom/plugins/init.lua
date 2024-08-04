-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.keymap.set('n', '_', function()
  require('oil').open_float()
end)
vim.keymap.set('n', '-', function()
  require('oil').open_float(vim.fn.getcwd())
end)

return {
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },
  {
    'tpope/vim-fugitive',
  },
  {
    'ThePrimeagen/harpoon',
    lazy = false,
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    config = true,
    keys = {
      { '<leader>ha', "<cmd>lua require('harpoon.mark').add_file()<cr>" },
      { '<leader>hm', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>" },
      { '<c-h>', "<cmd>lua require('harpoon.ui').nav_file(1)<cr>" },
      { '<c-n>', "<cmd>lua require('harpoon.ui').nav_file(2)<cr>" },
      { '<c-t>', "<cmd>lua require('harpoon.ui').nav_file(3)<cr>" },
      { '<c-s>', "<cmd>lua require('harpoon.ui').nav_file(4)<cr>" },
      { '<leader>1', "<cmd>lua require('harpoon.term').gotoTerminal(1)<cr>" },
      { '<leader>2', "<cmd>lua require('harpoon.term').gotoTerminal(2)<cr>" },
      { '<leader>3', "<cmd>lua require('harpoon.term').gotoTerminal(3)<cr>" },
      { '<leader>4', "<cmd>lua require('harpoon.term').gotoTerminal(4)<cr>" },
    },
  },
}
