return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- === CodeCompanion Setup ===
    require("codecompanion").setup({
      adapters = {
        http = {
          ollama = {
            opts = {
              url = "http://127.0.0.1:11434/v1/chat/completions",
              name = "Ollama (CodeGemma)",
              schema = {
                model = {
                  default = "codegemma:2b", -- use CodeGemma model
                },
              },
            },
          },
        },
      },
      strategies = {
        chat = {
          adapter = "ollama",
        },
        inline = {
          adapter = "ollama",
        },
      },
    })

    -- === LSP Highlighting ===
    vim.cmd([[
      highlight! link LspReferenceText CursorLine
      highlight! link LspReferenceRead CursorLine
      highlight! link LspReferenceWrite CursorLine
    ]])

  end,
}
