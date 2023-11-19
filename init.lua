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
        null_ls.builtins.formatting.nixpkgs_fmt,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.prettier_d_slim,
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

  -- LSP
  lsp = {
    servers = {
      ansiblels = {},
      bashls = {},
      clangd = {},
      cssls = {},
      emmet_ls = {},
      eslint = {},
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
      tsserver = {},
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
