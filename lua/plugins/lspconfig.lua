return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              format = {
                enable = true,
              },
              diagnostic = {
                enabled = true,
              },
              --     files = {
              --       maxSize = 1000000,
              --     },
            },
          },
        },
      },
    },
  },
}
