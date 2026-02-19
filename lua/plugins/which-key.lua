return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      local LazyVim = require("lazyvim.util")

      opts.spec = opts.spec or {}

      -- ChatGPT Keybindings for which-key
      if LazyVim.has("ChatGPT.nvim") then
        table.insert(opts.spec, {
          { "<leader>p", group = "ChatGPT [p]rompt" },
          { "<leader>pc", "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
          { "<leader>pe", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction", mode = { "n", "v" } },
          { "<leader>pg", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction", mode = { "n", "v" } },
          { "<leader>pt", "<cmd>ChatGPTRun translate<CR>", desc = "Translate", mode = { "n", "v" } },
          { "<leader>pk", "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords", mode = { "n", "v" } },
          { "<leader>pd", "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring", mode = { "n", "v" } },
          { "<leader>pa", "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests", mode = { "n", "v" } },
          { "<leader>po", "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code", mode = { "n", "v" } },
          { "<leader>ps", "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize", mode = { "n", "v" } },
          { "<leader>pf", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs", mode = { "n", "v" } },
          { "<leader>px", "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code", mode = { "n", "v" } },
          { "<leader>pr", "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit", mode = { "n", "v" } },
          { "<leader>pl", "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis", mode = { "n", "v" } },
        })
      end

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
