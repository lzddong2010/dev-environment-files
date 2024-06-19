return {
  "mfussenegger/nvim-dap-python",
  ft = { "python" },
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
  },
  config = function(_, opts)
    local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
    require("dap-python").setup(path)

    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>dpr", function()
      require("dap-python").test_method()
    end, { desc = "debug python run" })
  end,
}