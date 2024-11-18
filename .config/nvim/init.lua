require("daniel.core")
require("daniel.lazy")

require("nvim-ts-autotag").setup()
require("toggleterm").setup({
	open_mapping = [[<c-\>]],
	direction = "float",
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig").elixirls.setup({
	cmd = { "/home/daniel/.asdf/installs/elixir/elixir-ls/release/language_server.sh" },
	capabilities = capabilities,
})
