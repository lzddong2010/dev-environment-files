return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  config = function()
    -- local dap = require("dap")
    -- local dapui = require("dapui")
    -- dapui.setup()
    -- dap.listeners.after.event_initialized["dap_config"] = function()
    --   dapui.open()
    -- end
    -- dap.listeners.before.event_terminated["dap_config"] = function()
    --   dapui.close()
    -- end
    -- dap.listeners.before.event_exited["dap_config"] = function()
    --   dapui.close()
    -- end
    local dap, dapui = require("dap"), require("dapui")
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  end,
}
