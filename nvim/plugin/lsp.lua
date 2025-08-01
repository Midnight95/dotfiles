local lsp = require('lsp-zero')
local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = {
	  ['<C-p>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
	  ['<C-n>'] = cmp.mapping.select_next_item({behavior = 'select'}),
	  ['<C-y>'] = cmp.mapping.confirm({select = true}),
	  ['<C-Space>'] = cmp.mapping.complete(),
  }
})

local lua_opts = lsp.nvim_lua_ls()
require('lspconfig').lua_ls.setup(lua_opts)
require('lspconfig').twiggy_language_server.setup({})

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	"eslint",
	"lua_ls",
	"pylsp",
    "gopls",
    "hyprls",
    "taplo",
  },
  handlers = {
    lsp.default_setup,
  },
})


lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.jump({count = 1, float = true}) end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.jump({count = -1, float = true}) end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

