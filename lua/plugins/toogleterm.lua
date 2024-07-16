return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<leader>t]],
      direction = "horizontal",
    })

    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
      vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
      vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
      vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
    end

    vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
  end,
}
