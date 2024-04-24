vim.opt.tabstop = 4
vim.opt.undofile = true

-- Core
require("yvim").setup({
  null_ls = {
    sources = function(null_ls)
      return {
        null_ls.builtins.diagnostics.actionlint,
        null_ls.builtins.diagnostics.editorconfig_checker,
        null_ls.builtins.diagnostics.gitcommit,
        null_ls.builtins.diagnostics.textlint,
        null_ls.builtins.diagnostics.zsh,
        -- NOTE: Biome can be also used as a LSP server, but it requires
        --  dynamic registration of capabilities which is supported in
        --  Neovim 0.10.
        null_ls.builtins.formatting.biome,
        null_ls.builtins.formatting.nixpkgs_fmt,
        null_ls.builtins.formatting.prettier.with({
          disabled_filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "json",
            "jsonc",
          }
        }),
        null_ls.builtins.formatting.prettier_d_slim.with({
          disabled_filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "json",
            "jsonc",
          }
        }),
        null_ls.builtins.formatting.shfmt,
        null_ls.builtins.formatting.stylua,
      }
    end,
  },

  -- Completion
  completion = {
    copilot = {
      enable = true,
      filetypes = {},
    },
  },

  lang = {
    typescript = {
      enable = true,
    },
  },

  -- LSP
  lsp = {
    servers = {
      ansiblels = {},
      bashls = {},
      clangd = {},
      cssls = {},
      emmet_language_server = {
        init_options = {
          preferences = {
            ["css.color.case"] = "lower",
            ["css.floatUnit"] = "rem",
          },
          showSuggestionsAsSnippets = true,
        },
      },
      gopls = {},
      hls = {},
      html = {},
      jsonls = {},
      lua_ls = {
        settings = {
          Lua = {
            completion = { callSnippet = "Replace" },
            hint = { enable = true },
          },
        },
      },
      metals = {},
      nil_ls = {
        settings = {
          ["nil"] = {
            formatting = {
              command = { "nixpkgs-fmt" },
            },
          }
        },
      },
      ocamllsp = {},
      pylsp = {},
      r_language_server = {},
      rust_analyzer = {},
      sorbet = {},
      sourcekit = {},
      tailwindcss = {},
      terraformls = {},
      vuels = {},
      yamlls = {},
    },
  },

  -- Project
  project = {
    base_dirs = {
      { "/etc/dotfiles", max_depth = 0 },
      { "~/ghq",         max_depth = 4 },
    }
  },

  -- Snippet
  snippet = {
    user_snippet_dirs = {
      { vim.fn.stdpath("config") .. "/snippets", loader = "lua" },
    }
  },

  -- UI
  ui = {
    font = {
      name = "Iosevka Nerd Font",
      size = 16.5,
      forcedly_assign = true,
    }
  },

  -- Custom keymaps
  keymaps = {
    { "<lt>",        "<lt>gv",                       mode = "v" },
    { ">",           ">gv",                          mode = "v" },
    { "<M-Left>",    "<Cmd>BufferLineCyclePrev<CR>", desc = "Go to previous buffer" },
    { "<M-Right>",   "<Cmd>BufferLineCycleNext<CR>", desc = "Go to next buffer" },
    { "<M-S-Left>",  "<Cmd>BufferLineMovePrev<CR>",  desc = "Move the current buffer backwards" },
    { "<M-S-Right>", "<Cmd>BufferLineMoveNext<CR>",  desc = "Move the current buffer forwards" },
  },
})
