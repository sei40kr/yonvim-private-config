local null_ls = require("null-ls")
local path = require("yvim.util.path")

-- Core
yvim.null_ls.sources = {
  null_ls.builtins.diagnostics.actionlint,
  null_ls.builtins.diagnostics.editorconfig_checker,
  null_ls.builtins.diagnostics.gitcommit,
  null_ls.builtins.diagnostics.textlint,
  null_ls.builtins.diagnostics.zsh,
  null_ls.builtins.formatting.nixpkgs_fmt,
  null_ls.builtins.formatting.prettier,
  null_ls.builtins.formatting.prettier_d_slim,
  null_ls.builtins.formatting.shfmt,
  null_ls.builtins.formatting.stylua
}

-- Completion
yvim.completion.show_menu_border = true

-- Format
yvim.format.format_on_save = true

-- LSP
yvim.lsp.servers = {
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
  metals = {},
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
}

-- Project
yvim.project.base_dirs = {
  { "~/ghq", max_depth = 4 }
}

-- Snippet
yvim.snippet.user_snippet_dirs = {
  {
    path.join_paths(path.get_config_dir(), "snippets"),
    loader = "vscode",
  },
}

-- UI
yvim.ui.font = {
  name = "Iosevka Nerd Font",
  size = 16.5,
  forcedly_assign = true,
}
