return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "BufReadPost",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "python", "elixir", "rust", "javascript", "html", "css" }, -- Ensure these are installed
			highlight = {
				enable = true,                                            -- Enable syntax highlighting
				additional_vim_regex_highlighting = false,                -- Set to true only if you need legacy Vim regex highlights
			},
		})
	end,
}
