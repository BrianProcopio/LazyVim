return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    local LazyVim = require("lazyvim.util")

    if LazyVim.has("ChatGPT.nvim") then
      opts.defaults["<leader>p"] = {
        name = "ChatGPT [p]rompt",
        c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
        e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
        g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
        t = { "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
        k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
        d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
        a = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
        o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
        s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
        f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
        x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
        r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
        l = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis", mode = { "n", "v" } },
      }
    end

    if LazyVim.has("neovim-session-manager") then
      opts.defaults["<leader>m"] = {
        name = "Session [m]anager",
        l = { "<cmd>SessionManager load_session<CR>", "Load Session...", mode = { "n", "v" } },
        m = { "<cmd>SessionManager load_current_dir_session<CR>", "Load Last Session for CWD", mode = { "n", "v" } },
        L = { "<cmd>SessionManager load_last_session<CR>", "Load Last Saved Session", mode = { "n", "v" } },
        s = { "<cmd>SessionManager save_current_session<CR>", "Save CWD Session", mode = { "n", "v" } },
        d = { "<cmd>SessionManager delete_session<CR>", "Delete Session...", mode = { "n", "v" } },
        D = { "<cmd>SessionManager delete_current_dir_session<CR>", "Delete CWD Session", mode = { "n", "v" } },
      }
    end
  end,
}
