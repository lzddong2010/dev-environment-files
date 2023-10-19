return {
  "mfussenegger/nvim-dap",

  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "dap toggle breakpoint" })
  end,
}
