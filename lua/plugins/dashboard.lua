return {
  -- Disable snacks.nvim's built-in dashboard so dashboard-nvim can take over
  { "folke/snacks.nvim", opts = { dashboard = { enabled = false } } },
  {
    "nvimdev/dashboard-nvim",
    lazy = false, -- must not be lazy-loaded (handles stdin)
    opts = function()
      local logo = [[
   ▄▄▄▄    ██▀███  ▓█████ ▄▄▄       ██ ▄█▀     ██████ ▄▄▄█████▓ █    ██   █████▒ █████▒
▓█████▄ ▓██ ▒ ██▒▓█   ▀▒████▄     ██▄█▒    ▒██    ▒ ▓  ██▒ ▓▒ ██  ▓██▒▓██   ▒▓██   ▒ 
▒██▒ ▄██▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓███▄░    ░ ▓██▄   ▒ ▓██░ ▒░▓██  ▒██░▒████ ░▒████ ░ 
▒██░█▀  ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄      ▒   ██▒░ ▓██▓ ░ ▓▓█  ░██░░▓█▒  ░░▓█▒  ░ 
░▓█  ▀█▓░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ █▄   ▒██████▒▒  ▒██▒ ░ ▒▒█████▓ ░▒█░   ░▒█░    
░▒▓███▀▒░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒   ▒ ▒▓▒ ▒ ░  ▒ ░░   ░▒▓▒ ▒ ▒  ▒ ░    ▒ ░    
▒░▒   ░   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░   ░ ░▒  ░ ░    ░    ░░▒░ ░ ░  ░      ░      
 ░    ░   ░░   ░    ░    ░   ▒   ░ ░░ ░    ░  ░  ░    ░       ░░░ ░ ░  ░ ░    ░ ░    
 ░         ░        ░  ░     ░  ░░  ░            ░              ░                    
      ░                                                                              
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          -- stylua: ignore
          center = {
            { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", key = "f" },
            { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
            { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
            { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
            { action = [[lua require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })]], desc = " Config",          icon = " ", key = "c" },
            { action = "SessionManager load_last_session",                         desc = " Restore Session", icon = " ", key = "s" },
            { action = "SessionManager load_session",                              desc = " Browse Sessions", icon = " ", key = "p" },
            { action = "LazyExtras",                                               desc = " Lazy Extras",     icon = " ", key = "x" },
            { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
            { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "DashboardLoaded",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      return opts
    end,
  },
}
