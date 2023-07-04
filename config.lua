-- Core
yvim.null_ls.sources = function(null_ls)
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
    null_ls.builtins.formatting.stylua
  }
end

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
		vim.fn.stdpath("config") .. "/snippets",
		loader = "lua",
	},
}

-- UI
yvim.ui.font = {
  name = "Iosevka Nerd Font",
  size = 16.5,
  forcedly_assign = true,
}

-- Custom keymaps
yvim.keymaps.n = {
    ["<M-Left>"] = { "<Cmd>BufferLineCyclePrev<CR>", "Go to previous buffer" },
    ["<M-Right>"] = { "<Cmd>BufferLineCycleNext<CR>", "Go to next buffer" },
    ["<M-S-Left>"] = { "<Cmd>BufferLineMovePrev<CR>", "Move the current buffer backwards" },
    ["<M-S-Right>"] = { "<Cmd>BufferLineMoveNext<CR>", "Move the current buffer forwards" },
}
