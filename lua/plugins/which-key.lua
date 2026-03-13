return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      local LazyVim = require("lazyvim.util")

      opts.spec = opts.spec or {}

      -- Session Manager Keybindings for which-key
      if LazyVim.has("neovim-session-manager") then
        table.insert(opts.spec, {
          { "<leader>m", group = "Session [m]anager" },
          { "<leader>ml", "<cmd>SessionManager load_session<CR>", desc = "Load Session...", mode = { "n", "v" } },
          { "<leader>mm", "<cmd>SessionManager load_current_dir_session<CR>", desc = "Load Last Session for CWD", mode = { "n", "v" } },
          { "<leader>mL", "<cmd>SessionManager load_last_session<CR>", desc = "Load Last Saved Session", mode = { "n", "v" } },
          { "<leader>ms", "<cmd>SessionManager save_current_session<CR>", desc = "Save CWD Session", mode = { "n", "v" } },
          { "<leader>md", "<cmd>SessionManager delete_session<CR>", desc = "Delete Session...", mode = { "n", "v" } },
          { "<leader>mD", "<cmd>SessionManager delete_current_dir_session<CR>", desc = "Delete CWD Session", mode = { "n", "v" } },
        })
      end
    end,
  },
}
