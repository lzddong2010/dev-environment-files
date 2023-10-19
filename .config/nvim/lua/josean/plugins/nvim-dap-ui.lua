return {
  "rcarriga/nvim-dap-ui",
  dependencies = "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup()
    dap.listeners.after.event_initialized["dap_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dap_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dap_config"] = function()
      dapui.close()
    end
  end,
}
